<?php
session_start();
// session_unset();
unset($_SESSION['employeeEmail']);
echo "<script>location.assign('../index.php')</script>";
?>