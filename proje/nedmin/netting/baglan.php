<?php 

try {

	$db=new PDO("mysql:host=localhost;dbname=phpEmlak",'root','Emreygt41');
	//echo "veritabanı bağlantısı başarılı";
}

catch (PDOException $e) {

	echo $e->getMessage();
}

 ?>