<?php
include("includes/functions.php");
$sql = mysql_query("SELECT UserName,UserEmail,UserId,Act_Key FROM ".$table."users WHERE Active = '0'");
while($user = mysql_fetch_array($sql))
  {
    mail($user['UserEmail'],"Activation Remindoer: ".$_SESSION['siteTitle']."","Hello ".$user['UserName'].",\n\nThis email is to remind you that you have not yet activated your account on ".$_SESSION['siteTitle'].". We are sorry that the last link sent didn't work.\n\nShould you wish to activate, you can do so by going to the following URL:\n\nhttp://www.kpfanworld.com/activate.php?user=".$user['UserId']."&code=".$user['Act_Key']."\n\n".$_SESSION['siteTitle']." Management\nstaff@kpfanworld.com",$headers);
    echo $user['UserId'];
  }
?>
