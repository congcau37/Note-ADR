<?php
	// Mang JSON
	$response = array();

	// Kiem tra nhung field bat buoc
	if (isset($_POST['num_exam'])) { 
		$question = $_POST['question']; 
		$ans_a = $_POST['ans_a'];
		$ans_b 	= 	$_POST['ans_b'];
		$ans_c = $_POST['ans_c'];
		$result = $_POST['result'];
		$num_exam = $_POST['num_exam'];
		$level = $_POST['level'];
		$subject = $_POST['subject'];
		$teacher_code = $_POST['teacher_code'];

		require_once __DIR__ . '/connect.php';
		 // Tạo kết nối đến máy chủ
		 $db = new dbConnect();
		 $conn = $db->connect();
		 // Thêm tài khoản
		 mysqli_set_charset($conn,'utf8');

		 $check = mysqli_query($conn,"SELECT id FROM test WHERE num_exam = '$num_exam' AND level = '$level' AND subject = '$subject'");

		if(mysqli_num_rows($check) <6){
 $result = mysqli_query($conn,"INSERT INTO test (question, ans_a, ans_b, ans_c, result,num_exam,level,subject,teacher_code)
VALUES ('$question', '$ans_a', '$ans_b', '$ans_c', '$result','$num_exam','$level','$subject','$teacher_code')");

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
	}else{
			  $response["success"] = 3;
			  $response["message"] = "Mã đề '$num_exam' đã đủ số câu hỏi";
			 
			  // Tra ket qua
			  echo json_encode($response);
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