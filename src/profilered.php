<?php
// Code © 2006 ".$_SESSION['siteTitle']."
// Code written by Adam Humpherys
/*******profilered.php***********/
if (!$_REQUEST['user'])
  {
    header("Location: http://www.kpfanworld.com/index.php");
  }
include("includes/functions.php");
$userid = mysql_fetch_array(mysql_query("SELECT COUNT(*) AS count FROM ".$table."users WHERE UserId = '".$_REQUEST['user']."'"));
if (!$userid['count'])
  {
    $uname = mysql_fetch_array(mysql_query("SELECT COUNT(*) AS count FROM ".$table."users WHERE UserName = '".$_REQUEST['user']."'"));
    if (!$uname['count'])
      {
        $user = preg_replace("/_/"," ",$_REQUEST['user']);
      } else {
        $user = $_REQUEST['user'];
      }
    $uname1 = mysql_fetch_array(mysql_query("SELECT COUNT(*) AS count FROM ".$table."users WHERE UserName = '".$user."'"));
    if (!$uname1['count'])
      {
        header("Location: http://www.kpfanworld.com/index.php");
      }
    if ($uname['count'] == "1" || $uname1['count'] == "1")
      {
        $uid = mysql_fetch_array(mysql_query("SELECT UserId FROM ".$table."users WHERE UserName = '".$user."'"));
        header("Location: http://www.kpfanworld.com/profile.php?user=".$uid['UserId']);
      }
  }
 else
  {
    header("Location: http://www.kpfanworld.com/profile.php?user=".$_REQUEST['user']);
  }
?>
