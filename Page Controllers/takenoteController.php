<?php
require_once '../DB Handler/noteDB.php';

function showTable($para)
{
	$table=loadTable($para);
	
	foreach($table as $data)
	{
		echo "<tr>";
		echo "<td>".$data["NoteID"]."</td>";
		echo "<td>".$data["NoteName"]."</td>";
		echo "<td>".$data["OwnerID"]."</td>";
		echo "</tr>";		
	}
}

if(isset($_COOKIE['uid']) && isset($_COOKIE['sid']))
{
	$uid = $_COOKIE['uid'];
	$sid = $_COOKIE['sid'];
	
	$notename="";
	$namingErr = "";
	$upCheck = false;
	$text = "" ;
	
	$idErr = "";
	$downCheck = false;
	$noteID="";
	$downtext="";
	
	$updCheck = false;
	
	if(isset($_POST["logoutBTN"]))
	{
		setcookie("uid",$uid,time()-600);
		setcookie("sid",$sid,time()-600);
		header("Location:index.php");
	}
	
	if(isset($_POST["gohomebtn"]))
	{
		setcookie("uid",$uid,time()+600);
		setcookie("sid",$sid,time()+600);
		header("Location:home.php");
	}
	
	if(isset($_POST["uploadBTN"]))
	{
		if(empty($_POST["noteNameTF"]))
		{
			$namingErr = "*";
			$upCheck = false;
		}
		
		else
		{
			$notename = $_POST["noteNameTF"];
			$upCheck = true;
		}
		
		if(empty($_POST["noteTA"]))
		{
			$upCheck = false;
		}
		
		else
		{
			$text = $_POST["noteTA"];
			if(strlen(trim($text)) == 0)
			{
				$upCheck = false;
			}
			
			else
			{
				$upCheck = true;
			}
		}
		
		if($upCheck == true)
		{
			uploadNote($notename, $uid, $text);
		}
	}
	
	if(isset($_POST["downloadBTN"]))
	{
		if(empty($_POST["noteIDTF"]))
		{
			$idErr = "*";
			$downCheck = false;
		}
		
		else
		{
			$noteID = $_POST["noteIDTF"];
			$downCheck = true;
		}
		
		if($downCheck == true)
		{
			$srchdata=downloadNote($noteID, $uid);
			
			if($srchdata == null)
			{
				$idErr = "*";
				$downCheck = false;
			}
			
			else
			{
				$downtext = $srchdata[0]["Text"];
				$notename = $srchdata[0]["NoteName"];	
			}
		}
	}
	
	if(isset($_POST["updateBTN"]))
	{	
		if(empty($_POST["noteIDTF"]))
		{
			$idErr = "*";
			$updCheck = false;
		}
		
		else
		{
			$noteID = $_POST["noteIDTF"];
			$updCheck = true;
		}
		
		if(empty($_POST["noteNameTF"]))
		{
			$namingErr = "*";
			$updCheck = false;
		}
		
		else
		{
			$notename = $_POST["noteNameTF"];
			$updCheck = true;
		}
		
		if(empty($_POST["noteTA"]))
		{
			$updCheck = false;
		}
		
		else
		{
			$text = $_POST["noteTA"];
			if(strlen(trim($text)) == 0)
			{
				$updCheck = false;
			}
			
			else
			{
				$updCheck = true;
			}
		}
		
		if($updCheck == true)
		{
			updateNote($noteID, $notename, $text, $uid);
		}
	}
}

else
{
	header("Location:index.php");
}	
?>

<script>
    let saveFile = () => {
    	
        // Get the data from each element on the form.
    	const name = document.getElementById('txtName');
        const age = document.getElementById('txtAge');
        const email = document.getElementById('txtEmail');
        const country = document.getElementById('selCountry');
        const msg = document.getElementById('msg');
        
        // This variable stores all the data.
        let data = 
            '\r Name: ' + name.value + ' \r\n ' + 
            'Age: ' +age.value + ' \r\n ' + 
            'Email: ' + email.value + ' \r\n ' + 
            'Country: ' + country.value + ' \r\n ' + 
            'Message: ' + msg.value;
        
        // Convert the text to BLOB.
        const textToBLOB = new Blob([data], { type: 'text/plain' });
        const sFileName = 'formData.txt';	   // The file to save the data.

        let newLink = document.createElement("a");
        newLink.download = sFileName;

        if (window.webkitURL != null) {
            newLink.href = window.webkitURL.createObjectURL(textToBLOB);
        }
        else {
            newLink.href = window.URL.createObjectURL(textToBLOB);
            newLink.style.display = "none";
            document.body.appendChild(newLink);
        }

        newLink.click(); 
    }
</script>