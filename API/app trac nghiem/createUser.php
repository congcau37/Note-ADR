<?php
	// Mang JSON
	$response = array();

	// Kiem tra nhung field bat buoc
	if (isset($_POST['code'])&&isset($_POST['type'])) { 
		if($_POST['type']==1){
		$code = $_POST['code']; 
		$type = $_POST['type'];
		$name 	= 	$_POST['name'];
		$birthday = $_POST['birthday'];
		$phone = $_POST['phone'];
		$add = $_POST['add'];
		$gender = $_POST['gender'];

require_once __DIR__ . '/connect.php';
		 // Tạo kết nối đến máy chủ
		 $db = new dbConnect();
		 $conn = $db->connect();
		 // Thêm tài khoản
		 mysqli_set_charset($conn,'utf8');
		 $result = mysqli_query($conn,"INSERT INTO teacher (tch_name, tch_code, tch_add, tch_phone,tch_birthday, tch_gender)
VALUES ('$name', '$code', '$add', '$phone', '$birthday','$gender')");

		$results = mysqli_query($conn,"INSERT INTO user (name, password, type)
VALUES ('$code', '123', '$type')");
		 if ($result&&$results) {
			  $response["success"] = 1;
			  $response["message"] = "Lưu thành công.";
			  // $response["type"]    = $row["type"];
			  // Trả kết quả
			   echo json_encode($response);
			  
			  
		 } else {
			  $response["success"] = 0;
			  $response["message"] = "Không thể lưu.";
			 
			  // Tra ket qua
			  echo json_encode($response);
		 }
	}
	else{
		$code = $_POST['code']; 
		$type = $_POST['type'];
		$name 	= 	$_POST['name'];
		$birthday = $_POST['birthday'];
		$phone = $_POST['phone'];
		$add = $_POST['add'];
		$gender = $_POST['gender'];
		$class = $_POST['class'];

require_once __DIR__ . '/connect.php';
		 // Tạo kết nối đến máy chủ
		 $db = new dbConnect();
		 $conn = $db->connect();
		 // Thêm tài khoản
		 mysqli_set_charset($conn,'utf8');
		 $result = mysqli_query($conn,"INSERT INTO student (std_name, std_code, std_add, std_phone,std_birthday, std_gender, std_class)
VALUES ('$name', '$code', '$add', '$phone', '$birthday','$gender','$class')");
		 $results = mysqli_query($conn,"INSERT INTO user (name, password, type)
VALUES ('$code', '123', '$type')");

		 if ($result&&$results) {
			  $response["success"] = 1;
			  $response["message"] = "Lưu thành công.";
			  // $response["type"]    = $row["type"];
			  // Trả kết quả
			   echo json_encode($response);
		 } else {
			  $response["success"] = 0;
			  $response["message"] = "Không thể lưu.";
			 
			  // Tra ket qua
			  echo json_encode($response);
		 }
		}
	}
	 else {
		// Thong bao loi
		$response["success"] = 0;
		$response["message"] = "Bạn chưa nhập thông tin bắt buộc.";

		// Tra ket qua
		echo json_encode($response);
		}
?>