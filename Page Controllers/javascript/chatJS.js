let saveFile = () => 
{
	let data = ""+document.getElementById("receivenoteTA").value+"";
	
	if(data != "")
	{
		var con = confirm("Procced?");
		
		if(con == true)
		{
			
			alert("You can rename the file but make sure the file extention is .txt.\nYou can change the downloading destination as well.");
			const textToBLOB = new Blob([data], { type: 'text/plain' });
			var sFileName = "*";
			var name = document.getElementById("fromTB").value
			var date = document.getElementById("dateTB").value
			
			if(name != "")
			{
				var sFileName ="FROM "+name+" ("+date+")";
			}
			
			else
			{
				var sFileName ="*";
			}

			let newLink = document.createElement("a");
			newLink.download = sFileName;

			if (window.webkitURL != null) 
			{
				newLink.href = window.webkitURL.createObjectURL(textToBLOB);
			}
			
			else 
			{
				newLink.href = window.URL.createObjectURL(textToBLOB);
				newLink.style.display = "none";
				document.body.appendChild(newLink);
			}

			newLink.click();
			return true;
		}
		
		else
		{	
			alert("Process Canceled.");
			return false;
		}
	}
	
	else
	{
		alert("Empty Text can not be saved.\nDownload a note from Database or write someting and then try to PRINT.");
		return false;
	}
}