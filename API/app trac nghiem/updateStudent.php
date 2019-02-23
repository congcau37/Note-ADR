<?php
	// Mang JSON
	$response = array();

	// Kiem tra nhung field bat buoc
	if (isset($_POST['updateStudent'])) { 
		$std_code = $_POST['std_code']; 
		$std_name = $_POST['std_name'];
		$std_class = $_POST['std_class'];
		$std_add = $_POST['std_add'];
		$std_phone = $_POST['std_phone'];
		$std_birthday = $_POST['std_birthday'];
		$std_gender = $_POST['std_gender'];
		require_once __DIR__ . '/connect.php';

		 // Tạo kết nối đến máy chủ
		 $db = new dbConnect();
		 $conn = $db->connect();

	mysqli_set_charset($conn,'utf8');
         $check = mysqli_query($conn,"SELECT * FROM user WHERE name ='$name' AND password = '$old_password'");

		 if ($result) {
			// Mật khẩu đã được thay đổi
			$response["success"] = 1;
			$response["message"] = "Thay đổi mật khẩu thành công.";

			// Trả kết quả
			echo json_encode($response);
		 } else {
			$response["success"] = 0;
			$response["message"] = "Thay đổi mật khẩu thất bại.";
		 
			// Tra ket qua
			echo json_encode($response);
		}
	
		 
	} else {
		// Thong bao loi
		$response["success"] = 0;
		$response["message"] = "Bạn chưa nhập thông tin bắt buộc.";

		// Tra ket qua
		echo json_encode($response);
}
?>