<?php 
session_start(); 

if(!isset($_SESSION['login_success'])){
    header('location:login.php');
}

?>
<h1>
    welcome
</h1>