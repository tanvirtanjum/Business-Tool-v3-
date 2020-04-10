<?php
require_once '../DB Handler/loginDB.php';

if(isset($_COOKIE['uid']) && isset($_COOKIE['sid']))
{
	$uid = $_COOKIE['uid'];
	$sid = $_COOKIE['sid'];
		
	$oldpassPF="";
	$oldpassPFerror="";
	
	$newpassPF="";
	$newpassPFerror="";
	
	$confirmpassPF="";
	$confirmpassPFerror="";
	
	$temp = "";
	$msg1 = "";
	$msg2 = "";
	$msg3 = "";
	$msg4 = "";
	$rst = "";
	
	if(isset($_POST["logoutBTN"]))
	{
		setcookie("uid",$uid,time()-600);
		setcookie("sid",$sid,time()-600);
		header("Location:../index.php");
	}
	
	if(isset($_POST["gohomebtn"]))
	{
		setcookie("uid",$uid,time()+600);
		setcookie("sid",$sid,time()+600);
		header("Location:home.php");
	}
	
	if(isset($_POST["ProceedBTN"]))
	{
		$haserror=false;
		
		if(empty($_POST["oldpassPF"]))
		{
			$oldpassPFerror="*";
			$haserror=true;
		}
		
		else
		{
			$oldpassPF =$_POST["oldpassPF"];
			$data=getLogin($uid,$oldpassPF);
			if($oldpassPF != $data[0]['PASS']) 
			{
				$msg1 = '<span>Fill Correctly.</span>';
				$oldpassPF ="";
				$haserror=true;
			}
		}
		
		if(empty($_POST["newpassPF"]))
		{
			$newpassPFerror="*";
			$haserror=true;
		}
		
		else
		{	
			$newpassPF =$_POST["newpassPF"];
			if(strlen($newpassPF) < 4) 
			{
				$msg2 = '<span> Password must be atleast 4 digit</span>';
				$haserror=true;
			}
		}
		
		if(empty($_POST["confirmpassPF"]))
		{
			$confirmpassPFerror="*";
			$haserror=true;
		}
		
		else
		{	
			$confirmpassPF =$_POST["confirmpassPF"];
			if(strlen($confirmpassPF) < 4) 
			{
				$msg3 = '<span> Password must be atleast 4 digit</span>';
				$haserror=true;
			}
		}
		
		if(strlen($confirmpassPF)>3 && strlen($newpassPF))
		{
			if($newpassPF != $confirmpassPF)
			{
				$haserror=true;
				$msg4 = '<span>Fill Confirm Password Correctly.</span>';
			}
		}

		if(!$haserror)
		{
			updatePass($confirmpassPF,$uid,$oldpassPF);
			header("Location:../index.php");
		}		
	}	
}

else
{
	header("Location:../index.php");
}	
?>

<script>
	function showOldPass() 
	{
		var passTF = document.getElementById("oldpassTF");
		if (passTF.type === "password") 
		{
			passTF.type = "text";
		} 
		
		else 
		{
			passTF.type = "password";
		}
	}
	
	function showNewPass() 
	{
		var passTF = document.getElementById("newpassTF");
		if (passTF.type === "password") 
		{
			passTF.type = "text";
		} 
		
		else 
		{
			passTF.type = "password";
		}
	}
	
	function showConfirmPass() 
	{
		var passTF = document.getElementById("confirmpassTF");
		if (passTF.type === "password") 
		{
			passTF.type = "text";
		} 
		
		else 
		{
			passTF.type = "password";
		}
	}
</script>