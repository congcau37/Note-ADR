<?php
if(isset($_GET["getTeacher"])){
        // kiểm tra định dạng dữ liểu trả ra là json hay xml          
	$format = strtolower($_GET['format']) == 'json' ? 'json' : 'xml';
 include_once './connect.php';
 
 function dispInfo(){
	$db = new dbConnect();
 
	$conn = $db->connect();
	if (!$conn) {
		die('Khong the ket noi den may chu: ' . mysqli_error($conn));
		exit();
	}
	
	// Mang JSON
	$response = array();
	// $response["accounts"] = array();
 	$tch_code = $_GET['tch_code'];
 	if($tch_code == "all"){
	mysqli_set_charset($conn,'utf8');
	$result = mysqli_query($conn,"SELECT * FROM teacher");
 	}else{
	mysqli_set_charset($conn,'utf8');
	$result = mysqli_query($conn,"SELECT * FROM teacher WHERE tch_code = '$tch_code'");
 	}
 
	// Duyet du lieu
	if (mysqli_num_rows($result) > 0) {
		while($row = mysqli_fetch_assoc($result)){ 
			$t = array();
			$t["id"] = $row["id"];
			$t["tch_name"] = $row["tch_name"];
			$t["tch_code"] = $row["tch_code"];
			$t["tch_add"] = $row["tch_add"];
			$t["tch_phone"] = $row["tch_phone"];
			$t["tch_birthday"] = $row["tch_birthday"];
			$t["tch_gender"] = $row["tch_gender"];
 
			// Them du lieu vao mang
			// array_push($response["accounts"], $t);
			array_push($response, $t);
		}
	}
 
	// Thiet lap kieu tra ve la JSON
	header('Content-Type: application/json');
 
	// Gui ket qua ve client
	echo json_encode($response, JSON_UNESCAPED_UNICODE);
} 
dispInfo();
}
?>