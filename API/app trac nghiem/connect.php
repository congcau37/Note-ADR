<?php
class dbConnect {
 
 // Properties of class
 private $conn;
 private $hostname = 'localhost:3306';
 private $username = 'root';
 private $password = '';
 private $dbname = "test_app";
 
 function __construct() { 
   // Ket noi
   $this->connect();
 }
 
 function __destruct() {
  // Dong ket noi
  $this->close();
 }

 function connect() { 
 
  // Tao ket noi den MySQL
  $this->conn = mysqli_connect($this->hostname,$this->username,$this->password,$this->dbname) or die(mysqli_error());
  // mysqli_set_charset($con,'utf8');
 
  // Tra ve doi tuong connection
  return $this->conn;
 }

 function close() {
   // Dong ket noi
   mysqli_close($this->conn);
 }
}
?>