<html>
<head>
<title>... Testing Telaen installation ...</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<font face=Arial size=2>

<?php
chdir('../');	// So the include works
$error = false;
$warn = false;
?>

<strong>This script will test your configurations and try to give you a solution.</strong><br>
All configurations are located in <font face="Courier New" color=Gray>./inc</font> folder
and appear as <font face="Courier New" color=Gray>config.*.php</font><br>
<hr>

<br><strong>- Testing <font face="Courier New" color=Gray>inc/config.php</font></strong><br>
(<em>if the script stops here, there are a parse problems with your file; try getting a fresh copy and re-editing it</em>)<br>...

<?php
@include('inc/config.php');

if (is_array($default_preferences)) 
	echo('<font color=green><strong>PASSED</strong></font><br>');
else
	die('<font color=red><strong>FAILED</strong></font><br>There are problems with your <font face="Courier New" color=Gray>config.php</font>, try getting a fresh copy and re-editing it<br>');

echo("<br><strong>- Testing your \$temporary_directory variable</strong> ($temporary_directory)... <br>");

// Now start checking the location and perms for $temporary_directory
// Location vars
$localpath = realpath('./');
$temppath = realpath($temporary_directory);

// For webserver uid/gid info
$uidisvalid = 0;
$tmpfname = tempnam("/tmp", "TELAEN-");
$fd = @fopen($tmpfname, "w");
if ($fd) {
	if (fwrite($fd, "foo")) {
		fclose($fd);
		// we know the file was created
		$uid = fileowner($tmpfname);
		$gid = filegroup($tmpfname);
		unlink($tmpfname);
		$uidisvalid = 1;
	}
}

echo('<br>Can we write it?...   ');
if(!is_writable($temporary_directory)) {
	echo('<font color=red><strong>FAILED</strong></font>
	<br>The path given in <font face="Courier New" color=Gray>$temporary_directory</font> points to a folder that is not writable<br>
	The user wich your webserver runs on (apache in *nix or IUSR_name in windows) MUST have rights to create folder and files<br>
	on this directory. try chmod or Properties dialog<br>');
	echo("The directory should be mode 0700");
	if ($uidisvalid) {
		echo(" with a Owner of $uid and Group of $gid");
	}
	echo(".<br>");
	$error = true;
} else {
	// We know it's writable, but how secure is it?
	$tuid = fileowner($temporary_directory);
	$tgid = filegroup($temporary_directory);
	$mode = substr(sprintf('%o', fileperms($temporary_directory)), -4);
	
	echo('<font color=green><strong>PASSED</strong></font><br>');
	echo("Now let's check the permissions.<br>The directory should be mode 0700");
	if ($uidisvalid) {
		echo(" with a Owner of $uid and Group of $gid");
	}
	echo(". Let's see how close you are:<br>");
	echo("Your mode is $mode, Owner is $tuid and Group is $tgid...   ");
	if ($mode != "0700" ||
	   ($uidisvalid && (($tuid != $uid) || ($tgid != $gid)))) {
		echo('<font color=red><strong>WARNING</strong></font><br>Not setup securely!');
		$warn = true;
	} else {
			echo('<font color=green><strong>PASSED</strong></font><br>');
	}
}

echo('<br>Is it a safe location?...   ');
if(substr($temppath, 0, strlen($localpath)) == $localpath) {
	echo('<font color=red><strong>WARNING</strong></font>
	<br>The path given in <font face="Courier New" color=Gray>$temporary_directory</font> points to a folder inside the main folder<br>
	Eg. main folder is /var/html/telaen and temp folder is /var/html/telaen/tmp<br>
	There are security issues using this configuration, please choose a non-shared folder to store temporary files<br>
	/var/telaen is a good choice<br>');
	$warn = true;
} else {
	echo('<font color=green><strong>PASSED</strong></font><br>');
}

$phpver = phpversion();
$phpver = doubleval($phpver[0].".".$phpver[2]);

echo('<br><strong>- Testing your PHP version</strong>... ');

if($phpver >= 4.1) echo('<font color=green><strong>PASSED</strong></font><br>');
else {
	echo('<font color=red><strong>FAILED</strong></font><br> You are using PHP version '.$phpver.', <br>
there are SERIOUS security risks using versions below 4.1. Telaen will not work properly with your version, please update now.<br>');
	$error = true;
}

$tempSize = 
	str_replace('K', '*1024', 
	str_replace('M', '*1024*1024', 
	str_replace('G', '*1024*1024*1024', 
	ini_get('memory_limit'))));

$memoryLimit = 8*1024*1024; //default is 8Mb
if($tempSize) eval("\$memoryLimit = $tempSize;");

echo('<br><strong>- Testing your memory limits</strong>... ');

if($memoryLimit < 8) {
	echo('<font color=red><strong>FAILED</strong></font>
	<br>PHP.ini\'s <font face="Courier New" color=Gray>memory_limit</font> must be at least <code>8M</code> (We recommend 64M (64 MegaBytes)<br>');
	$error = true;
} elseif($memoryLimit >= 8 && $memoryLimit < 64) {
	echo('<font color=red><strong>WARNING</strong></font>
	<br>PHP.ini\'s <font face="Courier New" color=Gray>memory_limit</font> should be at least 64M (64 MegaBytes)<br>');
	$warn = true;
} else {
	echo('<font color=green><strong>PASSED</strong></font><br>');
}

echo('<br><strong>- Testing server installation</strong>... ');


if(ini_get('safe_mode')) {
	echo('<font color=red><strong>WARNING</strong></font>
	<br>PHP.ini\'s <font face="Courier New" color=Gray>safe_mode</font> is on. You may have problems with this configuration<br>');
	$warn = true;
} else {
	echo('<font color=green><strong>PASSED</strong></font><br>');
}

echo('<br><hr><br>');
if($error) {
?>

<strong><font color="red">
Your system is not ready to run Telaen.<br>
</font>
<h3>Please fix all <font color="red">FAILED</font> topics and run this page again</h3>
</strong></font>
<?php
} else {
?>
<strong><font color="#003366">
Your system appears to be ready to run Telaen.<br><br>
<?php
if($warn) {
?>
There are some <font color="red">WARNINGS</font> that should be fixed before you deploy your webmail.<br>
<br>
<?php
}
?>

Before you start using, make sure you've correctly configured your <font face="Courier New">$smtp_server</font><br>
variable. If you will use an external SMTP server, please make sure you will not  need a SMTP Authentication. <br>
In positive case , use the <font face="Courier New">$use_password_for_smtp</font> variable, otherwise you will<br>
receive a "Verify your relay rules" error message while sending mails<br><br><br>
<h3>To start using your webmail, please delete or rename the <font face="Courier New" color=Gray>extra/check_install.php</font> file AND <a href="../">CLICK HERE TO CONTINUE</a></h3>
</font></strong></font>
<?php
}
?>
</body>
</html>
