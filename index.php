<? 
require($_SERVER["DOCUMENT_ROOT"]."/ekz/models/reg.php");
require($_SERVER["DOCUMENT_ROOT"]."/ekz/models/DB.php");
require($_SERVER["DOCUMENT_ROOT"]."/ekz/controllers/orders.php");
$orderList1 = orders::getOrdersClients();
$orderList2 = orders::getOrdersProducts();
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<table>
<tr> <td> id Клиента </td> <td>Имя клиента </td> <td> Количество заказов</td> </tr>
<?php foreach($orderList1 as $arNews): ?>
<tr> <td><?= $arNews["id_us"] ?>  </td> <td> <?= $arNews["name_cl"] ?></td> <td> <?= $arNews["sum(id_us)"] ?></td> </tr>
<?php endforeach; ?>
</table>
<br>

<table>	
<tr> <td> id Товара </td> <td>Наименование товара </td> <td> Количество заказов</td> </tr>
<?php foreach($orderList2 as $arNew2): ?>
<tr> <td><?= $arNew2["id_tov"] ?>  </td> <td> <?= $arNew2["name_tov"] ?></td> <td> <?= $arNew2["sum(id_tov)"] ?></td> </tr>
<?php endforeach; ?>
</table>
</body>
</html>