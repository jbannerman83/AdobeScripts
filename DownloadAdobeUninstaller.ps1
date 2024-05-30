#Create C:\Temp folder if it does not exist
$path = "C:\Temp"
If(!(test-path -PathType container $path))
{
      New-Item -ItemType Directory -Path $path
}

# URL and Destination
$url = "https://github.com/jbannerman83/AdobeScripts/blob/main/AdobeUninstaller.exe"

# Download file
#Invoke-WebRequest -Uri $url -OutFile $path #-Credential $credObject
Start-BitsTransfer -Source $url -Destination $path
