<?php
	session_start();
	if ($_SESSION['userid'] == '')
	{
		$check = 0;
	}
	else
	{
		$check=1;
		$userid = addslashes($_SESSION['userid']);
	}
	$data['check'] = $check;
	$data['userid'] = $userid;
	echo json_encode($data);
?>