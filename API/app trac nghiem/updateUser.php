<?php
	// Mang JSON
	$response = array();

	// Kiem tra nhung field bat buoc
	if (isset($_POST['updateUser'])) { 
		$name = $_POST['name']; 
		$old_password = $_POST['old_password'];
		$new_password = $_POST['new_password'];
		require_once __DIR__ . '/connect.php';

		 // Tạo kết nối đến máy chủ
		 $db = new dbConnect();
		 $conn = $db->connect();

		mysqli_set_charset($conn,'utf8');
		 $result = mysqli_query($conn,"UPDATE user SET password = '$new_password' WHERE name = '$name'");

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