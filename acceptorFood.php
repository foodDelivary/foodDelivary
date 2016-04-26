<?php

error_reporting(E_ALL);

$link = mysql_connect('localhost', 'root', '');

if (!$link) {

    echo "-ERR MySQL Error: " . mysql_error();
    exit();
}

mysql_select_db("foodDelivaryDB");

$smsID = $_GET["smsID"];
$MSISDN = $_GET["MSISDN"];
$mobileSP = $_GET["msp"];
$smsBody = $_GET["smsBody"];

$smsBody = str_replace(" ", "", $smsBody);

$smsID = addslashes($smsID);
$MSISDN = addslashes($MSISDN);
$mobileSP = addslashes($mobileSP);
$smsBody = addslashes($smsBody);


$args = explode(':', $smsBody);
$PizzaType1 = $args[0];
$PizzaSize1 = $args[1];

$selectSQL = "

	SELECT 
		* 
	FROM 
		FoodDelivary 
		 
	WHERE 
		PizzaType =  '$PizzaType1'
                    AND 
		PizzaSize= '$PizzaSize1'
                   
";

$rSelect = mysql_query($selectSQL);

if ($rSelect == false) {

    echo "-ERR MySQL Error: " . mysql_error() . "\nSQL: $selectSQL";
    exit();
} else {


    $count = mysql_num_rows($rSelect);


    if ($count == 0) {

        echo "+OK Invalid Order.";
        exit();
    }


    $row = mysql_fetch_array($rSelect);


    $PizzaID = $row['PizzaID'];
    $PizzaType = $row['PizzaType'];
    $PizzaSize = $row['PizzaSize'];
    $PizzaPrice = $row['PizzaPrice'];

    echo "+ok PizzaType=$PizzaType, PizzaSize=$PizzaSize, Price=$PizzaPrice, ";
}
mysql_close($link);
?>






