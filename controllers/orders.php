<?php 
class orders {
	public static function getOrdersClients() {
$all = DB::run('select id_us, count(id_us), name_cl, sum(id_us) from orders, clients where orders.id_us = clients.id_cl group by id_us, name_cl limit 1')->fetchAll();
		return $all;
	}

	public static function getOrdersProducts() {
$all = DB::run('select id_tov, count(id_tov), name_tov, sum(id_tov) from orders, products where orders.id_tov = products.id_prod group by id_us, name_tov limit 1')->fetchAll();
		return $all;
	}
}

?>