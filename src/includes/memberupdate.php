<?php
// Code © 2006 ".$_SESSION['siteTitle']."
// Code written by Adam Humpherys
/*******memberupdate.php*********/
$memcfg = mysql_fetch_array(mysql_query("SELECT Config_Value AS value FROM ".$table."config WHERE Config_ID = 'MemberUpdate'"));
$memupdate = explode(",",$memcfg['value']);
$time = time();
if ($time >= $memupdate[1])
  {
    $cnt = mysql_fetch_array(mysql_query("SELECT COUNT(*) AS count FROM ".$table."users"));
    $memcnt = mysql_fetch_array(mysql_query("SELECT COUNT(*) AS count FROM ".$table."users WHERE Joined_Date > '".$memupdate[0]."'"));
    if ($memcnt['count'] == "1")
      {
        mail("staff@kpfanworld.com","Membership Count Update -- ".$_SESSION['siteTitle']."","Hello,\n\nThis email is to update you on membership numbers. Between ".date("M d Y g:i:s A",$memupdate[0])." and ".date("M d Y g:i:s A",$memupdate[1]).", ".$memcnt['count']." member has joined ".$_SESSION['siteTitle'].", making a total of ".$cnt['count']." registered users.\n\nThank you.","From: webmaster@kpfanworld.com");
      }
     elseif ($memcnt['count'] >= "2")
      {
        mail("staff@kpfanworld.com","Membership Count Update -- ".$_SESSION['siteTitle']."","Hello,\n\nThis email is to update you on membership numbers. Between ".date("M d Y g:i:s A",$memupdate[0])." and ".date("M d Y g:i:s A",$memupdate[1]).", ".$memcnt['count']." members have joined ".$_SESSION['siteTitle'].", making a total of ".$cnt['count']." registered users.\n\nThank you.","From: webmaster@kpfanworld.com");
      }
     $new = $memupdate[1] + (3600*24);
     $sql = mysql_query("UPDATE ".$table."config SET Config_Value = '".$memupdate[1].",".$new."' WHERE Config_ID = 'MemberUpdate'");
  }
?>
