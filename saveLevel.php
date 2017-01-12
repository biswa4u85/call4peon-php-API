<?php

// Include confi.php
include_once('config.php');

//if($_SERVER['REQUEST_METHOD'] == "_POST")
if(1)
	{
	// Get data
//	$_POST= $_REQUE ST;
	$data = json_decode($_POST['data']);
	$data = json_decode(file_get_contents('php://input'), true);
	$senderUserID = isset($data['senderUserID']) ? mysql_real_escape_string($data['senderUserID']) : "";
	$targetUserID = isset($data['targetUserID']) ? mysql_real_escape_string($data['targetUserID']) : "";
	
	$levelName = isset($data['levelName']) ? mysql_real_escape_string($data['levelName']) : "";
	$levelContent = isset($data['levelContent']) ? mysql_real_escape_string($data['levelContent']) : "";

	// Insert data into data base SaveLevels
	$sql = "INSERT INTO `SaveLevels` (`levelID`, `senderUserID`, `targetUserID`) 
			VALUES (NULL, '$senderUserID', '$targetUserID');";
	$qur = mysql_query($sql);
 	$levelID = mysql_insert_id();
	// Insert data into data base UserLevels
	$sql = "INSERT INTO `UserLevels` (`userID`, `levelID`, `levelName`, `levelContent`) 
			VALUES ('$senderUserID', '$levelID', '$levelName', '$levelContent');";
	$qur = mysql_query($sql);
	if($qur){
		$json = array("Success" => 200, "levelID" => $levelID );
	}else{
		$json = array("Error" => 400,  "errorMessage" => "Bad Request");
	}
}else{
	$json = array("Errot" => 400, "errorMessage" => "Request method not accepted");

}

@mysql_close($conn);

/* Output header */
	header('Content-type: application/json');
	echo json_encode($json);
