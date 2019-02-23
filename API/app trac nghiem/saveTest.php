<?php
	// Mang JSON
	$response = array();

	// Kiem tra nhung field bat buoc
	if (isset($_POST['std_name'])) { 
		$std_name = $_POST['std_name']; 
		$exam_code = $_POST['exam_code'];
		$level 	= 	$_POST['level'];
		$date = $_POST['date'];
		$score = $_POST['score'];
		$std_code = $_POST['std_code'];
		$subject = $_POST['subject'];
		require_once __DIR__ . '/connect.php';
		 // Tạo kết nối đến máy chủ
		 $db = new dbConnect();
		 $conn = $db->connect();
		 // Thêm tài khoản
		 mysqli_set_charset($conn,'utf8');
		 $result = mysqli_query($conn,"INSERT INTO history (std_name, exam_code, level, date, score,std_code,subject)
VALUES ('$std_name', '$exam_code', '$level', '$date', '$score','$std_code','$subject')");
		$result1 = mysqli_query($conn,"INSERT INTO high_score (std_name, std_code, score, subject)
VALUES ('$std_name', '$std_code', '$score', '$subject')");

		 if ($result&&$result1) {
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