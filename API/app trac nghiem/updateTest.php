<?php
	// Mang JSON
	$response = array();

	// Kiem tra nhung field bat buoc
	if (isset($_POST['updateTest'])) { 
		$question = $_POST['question']; 
		$id = $_POST['id'];
		$ans_a = $_POST['ans_a'];
		$ans_b = $_POST['ans_b'];
		$ans_c = $_POST['ans_c'];
		$result = $_POST['result'];
		$level = $_POST['level'];
		$subject = $_POST['subject'];
		$teacher_code = $_POST['teacher_code'];
		require_once __DIR__ . '/connect.php';

		 // Tạo kết nối đến máy chủ
		 $db = new dbConnect();
		 $conn = $db->connect();
		 // Thêm tài khoản
		 mysqli_set_charset($conn,'utf8');
		 $result = mysqli_query($conn,"UPDATE test SET question = '$question' , ans_a = '$ans_a' , ans_b = '$ans_b' , ans_c = '$ans_c' , result = '$result' , level = '$level' , subject = '$subject' , teacher_code = '$teacher_code' WHERE id = '$id'");

		 if ($result) {
			// Mật khẩu đã được thay đổi
			$response["success"] = 1;
			$response["message"] = "Sửa thành công.";

			// Trả kết quả
			echo json_encode($response);
		 } else {
			$response["success"] = 0;
			$response["message"] = "Sửa thất bại.";
		 
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