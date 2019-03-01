<?php
// Code © 2006 ".$_SESSION['siteTitle']."
// Code written by Adam Humpherys
/*******donate.php***************/
include("includes/functions.php");
incheader("Donate");
?><br><br><font color="#00FF00"><b>We now have all the funds needed for the next server renewal.<br> Donate now and we can get a jump start for the server renewal after that!</b></font>
<table align="center">
  <tr>
    <th>Current Funds:</th>
  </tr>
  <tr>
    <td align="center"><font size="+1"><b>$167.94</b></font></td>
  </tr>
  <tr>
    <td height="25"></td>
  </tr>
  <tr>
    <th>Funds needed:</th>
  </tr>
  <tr>
    <td align="center"><font size="+1"><b>+1.14</b></font></td>
  </tr>
  <tr>
    <td height="25"></td>
  </tr>
  <tr>
    <th>Donate:</th>
  </tr>
  <tr>
    <td align="center"><form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank" style="margin-top:5px;margin-bottom:10px">
<input type="hidden" name="cmd" value="_xclick">
<input type="hidden" name="business" value="paypal@kpfanworld.com">
<input type="hidden" name="item_name" value="".$_SESSION['siteTitle']."">
<input type="hidden" name="item_number" value="kpfwms">
<input type="hidden" name="page_style" value="KPFW">
<input type="hidden" name="no_shipping" value="1">
<input type="hidden" name="no_note" value="1">
<input type="hidden" name="currency_code" value="USD">
<input type="hidden" name="tax" value="0">
<input type="hidden" name="bn" value="PP-DonationsBF">
<input type="submit" value="Via PayPal" name="submit"><br>
<img alt="" border="0" src="https://www.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form><br><br>
<?php
footer();
?>
