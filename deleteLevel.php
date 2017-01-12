<?php
        // Include confi.php
        include_once('config.php');

        $userID = isset($_GET['userID']) ? mysql_real_escape_string($_GET['userID']) :  "";
        $levelID = isset($_GET['levelID']) ? mysql_real_escape_string($_GET['levelID']) :  "";
        if(!empty($userID) AND !empty($levelID)){
                $qur = mysql_query("DELETE FROM `UserLevels` WHERE userID='$userID' AND levelID='$levelID'");
                $json = array("Success" => 200, "successMessage" => "Record is deleted successfully!");
        }else{
                $json = array("Error" => 400,  "errorMessage" => "Bad Request. IDs mismatch");
        }
        @mysql_close($conn);

        /* Output header */
        header('Content-type: application/json');
        echo json_encode($json);


