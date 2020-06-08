<?php 
class products {
	public static function getAveragePrice() {
$all = DB::run('select id, mark, price from telep where price = (select avg(price) from telep)')->fetchAll();
		return $all;
	}

	public static function delNullPrice() {
$all = DB::run('delete from telep where price is NULL')->fetchAll();
		return $all;
	}
}



if(isset($_POST['msubmit'])) {
	$del = products::delNullPrice();
}


?>