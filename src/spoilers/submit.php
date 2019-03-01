<?
$Spoiler = $_REQUEST['Spoilertext'];
$Category = $_REQUEST['SpoilerCat'];

if (empty($Spoiler))
  {
    header("Location: spoilers?p=submit&err=true");
  }
else
  {
    $sql = mysql_query("INSERT INTO ".$table."spoiler VALUES ('','$Spoiler','False','$Category','".$_SESSION['userID']."')");
    mail("staff@kpfanworld.com","Spoiler Posted",stripslashes("Someone has posted a spoiler on ".$_SESSION['siteTitle'].".\n\nContent of spoiler:\n$Spoiler\n\n".$_SESSION['siteTitle']." Management"),$headers);
    echo "<h2>Spoiler Submission Successful</h2><br>";
    echo "<center><br><span class=\"text\">Spoiler submission has been successful. You may now return to the main page.<br>You will need to confirm submission by following the URL given in email. Then you will be able to view your submission on the main spoiler page.<br><br><br><a href=\"spoilers?confirm=true\" onmouseover=\"window.status='Show me the spoilers!';return true\" onmouseout=\"window.status='';return true\">Go back to spoilers</a></span></center><br><br>";
  }
?>
