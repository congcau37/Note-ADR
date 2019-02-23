<?php
if(isset($_GET["getExam"])){
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
 	$subject = $_GET['subject'];
	// Truy van du lieu	
	mysqli_set_charset($conn,'utf8');
	$result = mysqli_query($conn,"SELECT * FROM test WHERE subject = '$subject'");
 
	// Duyet du lieu
	if (mysqli_num_rows($result) > 0) {
		while($row = mysqli_fetch_assoc($result)){ 
			$t = array();
			$t["id"] = $row["id"];
			$t["question"] = $row["question"];
			$t["ans_a"] = $row["ans_a"];
			$t["ans_b"] = $row["ans_b"];
			$t["ans_c"] = $row["ans_c"];
			$t["result"] = $row["result"];
			$t["num_exam"] = $row["num_exam"];
			$t["subject"] = $row["subject"];
			$t["level"] = $row["level"];
			$t["teacher_code"] = $row["teacher_code"];

 
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