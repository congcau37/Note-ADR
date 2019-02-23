<?php
if(isset($_GET["getStudent"])){
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
 	$std_code = $_GET['std_code'];
 	if($std_code=="all"){
 		mysqli_set_charset($conn,'utf8');
	$result = mysqli_query($conn,"SELECT * FROM student");
 	}else {
// Truy van du lieu	
	mysqli_set_charset($conn,'utf8');
	$result = mysqli_query($conn,"SELECT * FROM student WHERE std_code = '$std_code'");
 	}
	
 
	// Duyet du lieu
	if (mysqli_num_rows($result) > 0) {
		while($row = mysqli_fetch_assoc($result)){ 
			$t = array();
			$t["id"] = $row["id"];
			$t["stdName"] = $row["std_name"];
			$t["stdCode"] = $row["std_code"];
			$t["stdAdd"] = $row["std_add"];
			$t["stdPhone"] = $row["std_phone"];
			$t["stdBirthday"] = $row["std_birthday"];
			$t["stdClass"] = $row["std_class"];
			$t["stdGender"] = $row["std_gender"];
 
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