<?php
// Code � 2006 ".$_SESSION['siteTitle']."
// Code written by Adam Humpherys
/*******profile_edit.inc*********/
?>
<br><br>
<table width="814" border="1" rules="none" align="center">
  <tr>
    <th>Edit Profile</th>
  </tr>
  <tr>
    <td align="center">Below you can edit your profile. Insert links, images, etc. Link to your art sites, link to stories, videos, whatever you want. Personalize it with <a href="userbars" target="_blank">userbars</a>. Say hi to your friends, tell about yourself, whatever. We've given you lots of room to play around with.<br>
      <table>
        <tr><form action="editprofile.php" method="post">
          <td><input type="hidden" name="user" value="<?=$UserID?>">
            <b>Username:</b>&nbsp;&nbsp;<i><?=$UserName?></i><br>
            <b>Email:</b>&nbsp;&nbsp;<input type="text" value="<?=$Profile['UserEmail']?>" name="uemail"><br>
            <b>New Password:</b>&nbsp;&nbsp;<input type="text" name="newpassword"> (only if changing)<br>
            <b>Retype Password:</b>&nbsp;&nbsp;<input type="text" name="vrfypassword"><br>
            <hr>
            <b>Date Joined:</b>&nbsp;&nbsp;<i><?=gmdate("D, d M Y g:i A",$Profile['Joined_Date']+$_SESSION['TZone'])?></i><br>
            <b>Time Zone:</b>&nbsp;&nbsp;<input type="text" value="<?echo$Profile['Time_Zone']?>" name="timezone" size="5"> (ex: -7.00 or +3.50) <span style="color:#FFFF00;cursor:hand" onclick="window.open('tzhelp.php','','location=no,menubar=no,status=no,scrollbars=no,resizable=no,toolbar=no,width=640,height=480');">Time Zone Help</span><br>
            <b>Name:</b>&nbsp;&nbsp;<input type="text" name="name" value="<?=$Profile['Name']?>"><br>
            <b>Show email in profile</b>&nbsp;&nbsp;<input type="checkbox" name="showemail" value="true" <?=$checked?>><br>
            <hr>
            <b>Profile:</b>&nbsp;&nbsp;<input type="button" onclick="window.open('bbcode.html','','location=no,menubar=no,status=no,scrollbars=no,resizable=no,toolbar=no,width=462,height=525');" value="Available BBCode"><br>
            <textarea name="profile" cols="65" rows="12"><?=stripslashes($Profile['Profile'])?></textarea><br>
          </td>
        </tr>
      </table>
      <input type="submit" value="Submit">&nbsp;&nbsp;<input type="reset" value="Reset"></form>
    </td>
  </tr>
</table><br><br>
