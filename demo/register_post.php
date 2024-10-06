<?php 
session_start();

$name = $_POST['name'];
$email = $_POST['email'];
$password = $_POST['password'];

$upper = preg_match('@[A-Z]@', $password);
$lower = preg_match('@[a-z]@', $password);
$number = preg_match('@[0-9]@', $password);
$spsl = preg_match('^[@,#,$,&,%,*]^', $password);

$flag = false;

if(empty($name)){
    $flag = true;
    $_SESSION['nam_err'] = 'Please Enter Your Name';
    
}
if(empty($email)){
    $flag = true;
    $_SESSION['email_err'] = 'Please Enter Your Email';
   
}
else{
    if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
        $flag = true;
        $_SESSION['email_err'] = 'Invalid Email Format';
    }
}
if(empty($password)){
    $flag = true;
    $_SESSION['pass_err'] = 'Please Enter Your Password';
   
}
else{
    if(!$upper || !$lower || !$number || !$spsl || strlen($password)< 8){
        $flag = true;
        $_SESSION['pass_err'] = 'Must contain atleast 1 uppercase, lowercase,number,special char & lenght should be >=8';
    }
}

if($flag){
    header('location:register.php');
}

?>