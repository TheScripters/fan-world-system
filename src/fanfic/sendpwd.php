<?php
// Code � 2006 ".$_SESSION['siteTitle']."
// Code written by Adam Humpherys
/*******sendpwd.php**************/

include("includes/functions.php");
if (!isset($_GET['send']))
  {
    incheader("Request Password");
    echo "<form action=\"sendpwd.php?send=true\" method=\"post\">\n";
    echo "<b>Username:</b>&nbsp;&nbsp;<input type=\"text\" name=\"UserName\" value=\"".$_GET['UserName']."\"><br>\n";
    echo "<b>Email:</b>&nbsp;&nbsp;<input type=\"text\" name=\"Email\" value=\"".$_GET['Email']."\"><br>\n";
    echo "<input type=\"submit\" value=\"Request Password\"></form>";
    footer();
  }
if ($_GET['send'] == "true")
  {
    $user = $_REQUEST['UserName'];
    $email = $_REQUEST['Email'];
    $verify = mysql_fetch_array(mysql_query("SELECT COUNT(*) AS valid FROM ".$table."users WHERE UserName = '$user' AND UserEmail = '$email' AND Active = '1'"));
    if ($verify['valid'] == "1")
      {
        incheader("Password Sent");
        $newpass = randomkeys(5);
        $md5pass = md5($newpass);
        $pwdupdate = mysql_query("UPDATE ".$table."users SET Password = '$md5pass' WHERE UserName = '$user' AND UserEmail = '$email'");
        $headers = "Reply-to: staff@kpfanworld.com\nFrom: staff@kpfanworld.com\nReturn-Path: staff@kpfanworld.com\nMessage-ID: <" . md5(uniqid(time())) . "@kpfanworld.com>\nMIME-Version: 1.0\nContent-type: text/plain; charset=iso-8859-1\nContent-transfer-encoding: 8bit\nDate: " . date('r', time()) . "\nX-Priority: 3\nX-MSMail-Priority: Normal\nX-Mailer: PHP\nX-MimeOLE: Produced By ".$_SESSION['siteTitle']."\n";
        mail("$user <$email>", "Password Request: ".$_SESSION['siteTitle']."", "Hello, $user\n\nSomeone, hopefully you, has requested a new password for your account. Your password was irretrievable due to being encoded so you were given a new, random one.\n\nNew Password: $newpass\n\nYou may now login and change it as needed.\n\nThank you.\n".$_SESSION['siteTitle']." Management", $headers);
        echo "Your password has been sent to $email.";
        footer();
      }
    if ($verify['valid'] == "0")
      {
        incheader("Request Password");
        echo "We're sorry, this account either does not exist, has not yet been activated, has been disabled, or you entered a wrong email address/username.<br><br>Please contact an administrator at <a href=\"mailto:staff@kpfanworld.com\">staff@kpfanworld.com</a> if you need help or further information.<br><br>";
        footer();
      }
  }
?>
