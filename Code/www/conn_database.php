<?php
	$conn = @mysql_connect("localhost","root","wangci940117");
	$mysql_database="subsystem_sharing";
	if (!$conn)
	  {
	  die('Could not connect: ' . mysql_error());
	  }
?>