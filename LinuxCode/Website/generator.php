<?php
	require 'helpers.php';
	$privateKey="";
	$publicKey="";
	if(isset($_POST['generate']))
	{
		writeFile("motion/job", "3");
		$privateKey = "<a href='motion/private.rsa'>Private key</a>";
		$publicKey = "<a href='motion/public.rsa'>Public key</a>";
	}
?>
Generate random certificate:
<form action="generator.php" method="post" accept-charset="utf-8" enctype="multipart/form-data">
<input type="text" name="generate" style="display:none"/>
    <input type="submit" value="Generate" />
</form>		
<?php
	echo $privateKey."<br>";
	echo $publicKey."<br>";
?>