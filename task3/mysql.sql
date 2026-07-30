<!DOCTYPE html>
<html>
<head>
    <title>Shipping System</title>
</head>
<body>

<h2>Shipping Form</h2>

<form action="insert.php" method="post">
    Receiving Date:
    <input type="date" name="receiving_date"><br><br>

    Tracking Number:
    <input type="text" name="tracking_number"><br><br>

    Product Name:
    <input type="text" name="product_name"><br><br>

    CBM:
    <input type="text" name="cbm"><br><br>

    Weight:
    <input type="text" name="weight"><br><br>

    <input type="submit" value="Insert">
</form>

</body>
</html>

<?php
$conn = new mysqli("localhost","root","","shipping_db");

$receiving_date = $_POST['receiving_date'];
$tracking_number = $_POST['tracking_number'];
$product_name = $_POST['product_name'];
$cbm = $_POST['cbm'];
$weight = $_POST['weight'];

$sql = "INSERT INTO shipping(receiving_date,tracking_number,product_name,cbm,weight)
VALUES('$receiving_date','$tracking_number','$product_name','$cbm','$weight')";

if($conn->query($sql)){
    echo "Data Inserted Successfully";
}else{
    echo "Insert Failed";
}

$conn->close();
?>