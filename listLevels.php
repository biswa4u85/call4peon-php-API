<?php
	// Include confi.php
	include_once('config.php');

	$userID = isset($_GET['userID']) ? mysql_real_escape_string($_GET['userID']) :  "";
	if(!empty($userID)){
//		$qur = mysql_query("select levelID, levelName, levelContent from `UserLevels` where userID='$userID'");
		$qur = "select s.senderUserID, u.* from `UserLevels` as u, `SaveLevels` as s where u.levelID = s.levelID and
                         (s.senderUserID='$userID' or s.targetUserID = '$userID') ";
		$qur = mysql_query($qur);

		$result =array();
		while($r = mysql_fetch_array($qur)){
			extract($r);
			$result[] = array("levelID" => $levelID, "levelName" => $levelName, 'levelContent' => $levelContent, 'senderUserID' =>
	 $senderUserID); 
		}
		$json = array("Success" => 200, "levelContentArray" => $result);
	}else{
		$json = array("Error" => 400,  "errorMessage" => "Bad Request");
	}
	@mysql_close($conn);

	/* Output header */
	header('Content-type: application/json');
	echo json_encode($json);
