<?php
  session_start();

  $USERID=$_POST['userid'];
  $USERPASSWORD=$_POST['userpassword'];

  if (!empty($USERID) and !empty($USERPASSWORD)){
      $_SESSION['userid'] = $USERID;  
      $check = 1;
      echo (int)$check;
  }
?>