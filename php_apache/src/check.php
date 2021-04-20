<?php require_once("inc/connection.php");?>
<?php
// Скрипт проверки


$query = pg_query($link,"SELECT company_name FROM company WHERE company_id=1 LIMIT 1;");
$data = pg_fetch_assoc($query);

#print    $data['company_name'];
pg_close($link);

$var = "<div>\n</div>";

echo $data['company_name'];
echo $var;
echo "Hostname is ";
echo  gethostname();

if(isset($_POST['submit']))
{
    header("Location: index.php"); exit();
}

?>
<form method="POST">
<input name="submit" type="submit" value="Выйти">
</form>
