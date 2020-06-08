<? 
require($_SERVER["DOCUMENT_ROOT"]."/ekz2/models/reg.php");
require($_SERVER["DOCUMENT_ROOT"]."/ekz2/models/DB.php");
require($_SERVER["DOCUMENT_ROOT"]."/ekz2/controllers/products.php");
$orderList1 = products::getAveragePrice();
$orderList2 = products::delNullPrice();
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
<table>
<tr> <td> id товара </td> <td>Наименование </td> <td> Цена</td> </tr>
<?php foreach($orderList1 as $arProd): ?>
<tr> <td><?= $arProd["id"] ?>  </td> <td> <?= $arProd["mark"] ?></td> <td> <?= $arProd["price"] ?></td> </tr>
<?php endforeach; ?>
</table>
<br>

<form method="post" action="">
<input type="submit" value="Удалить" class="buttons" name="msubmit">
</form>
</body>
</html>