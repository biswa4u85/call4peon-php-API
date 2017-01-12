<?php
	// Include confi.php
	include_once('config.php');

	$userID = isset($_GET['userID']) ? mysql_real_escape_string($_GET['userID']) :  "";
	$levelID = isset($_GET['levelID']) ? mysql_real_escape_string($_GET['levelID']) :  "";
	if(!empty($userID) AND !empty($levelID)){
		$qur = "select u.* from `UserLevels` as u, `SaveLevels` as s where u.levelID = s.levelID and
			 (s.senderUserID='$userID' or s.targetUserID = '$userID') AND u.levelID='$levelID'";
		$qur = mysql_query($qur);
		$result =array();
		while($r = mysql_fetch_array($qur)){
			extract($r);
			$result[] = array("levelID" => $levelID, "levelName" => $levelName, 'levelContent' => $levelContent); 
		}
		$json = array("Success" => 200, "levelContentArray" => $result);
	}else{
		$json = array("Error" => 400,  "errorMessage" => "Bad Request");
	}
	@mysql_close($conn);

	/* Output header */
	header('Content-type: application/json');
	echo json_encode($json);
