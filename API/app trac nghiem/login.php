<?php
	// Mang JSON
	$response = array();

	// Kiem tra nhung field bat buoc
	if (isset($_POST['acc_user'])) { 
		$acc_user = $_POST['acc_user']; 
		$acc_pwd = $_POST['acc_pwd'];
		require_once __DIR__ . '/connect.php';
		 // Tạo kết nối đến máy chủ
		 $db = new dbConnect();
		 $conn = $db->connect();
		 // Thêm tài khoản
		 $result = mysqli_query($conn,"SELECT name,type FROM user WHERE name = '$acc_user' AND password='$acc_pwd'");

		 if (mysqli_num_rows($result) > 0) {
			  // Tai khoan da duoc tao moi
		 	  $row = mysqli_fetch_array($result);
			  $response["success"] = 1;
			  $response["message"] = "Đăng nhập thành công.";
			  $response["type"]    = $row["type"];
			  // Trả kết quả
			   echo json_encode($response);
		 } else {
			  $response["success"] = 0;
			  $response["message"] = "Không thể đăng nhập.";
			 
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