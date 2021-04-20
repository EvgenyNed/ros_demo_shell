<?php
#    require("constants.php");
$host = "db";
$db = "rosbank";
$user = "evgen";
$pass = "123456";

$link = pg_connect("host=$host dbname=$db user=$user password=$pass") or die("Could not connect to Server\n");
#if (!$link) {
#    echo "Error : Unable to open database\n";
 #  } else {
 #  echo "Connection complete\n";
  # }
?>