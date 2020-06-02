<?php 

class DB { 		
	protected static $instance = null;

	public static function instance() {
		if(self::$instance === null) {
	$dsn = 'mysql:host='.dbhost.';dbname='.dbname.';charset='.dbcharset;
			$opt = [
        PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        PDO::ATTR_EMULATE_PREPARES   => false,
    ];
			self::$instance = new PDO($dsn, dbuser, dbpass, $opt);
		}
		return self::$instance;
	}

	public static function run($sql, $args=array()) {
		if(!$args) {
			return self::instance()->query($sql);
		}
		else {
			$stmt = self::instance()->prepare($sql);
		$stmt->execute($args);
		return $stmt;
		}
		
	}
}
?>