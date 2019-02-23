<?php
	// Mang JSON
	$response = array();

	// Kiem tra nhung field bat buoc
	if (isset($_POST['std_code']&&$_POST['std_name'])) { 
		$std_code = $_POST['std_code']; 
		$std_name = $_POST['std_name'];
		$score 	= 	$_POST['score'];

		require_once __DIR__ . '/connect.php';
		 // Tạo kết nối đến máy chủ
		 $db = new dbConnect();
		 $conn = $db->connect();
		 // Thêm tài khoản
		 mysqli_set_charset($conn,'utf8');
		 $result = mysqli_query($conn,"INSERT INTO high_score (std_name, std_code, score)
VALUES ('$std_name', '$std_code', '$score')");

		 if ($result) {
			  // Tai khoan da duoc tao moi
		 	  // $row = mysqli_fetch_array($result);
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
	} else {
		// Thong bao loi
		$response["success"] = 0;
		$response["message"] = "Bạn chưa nhập thông tin bắt buộc.";

		// Tra ket qua
		echo json_encode($response);
}
?>