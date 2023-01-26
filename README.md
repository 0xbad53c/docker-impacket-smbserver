# docker-impacket-smbserver
Simple docker file to start an SMB share with impacket smbserver


# Usage
```
git clone https://github.com/0xbad53c/docker-impacket-smbserver.git
cd docker-impacket-smbserver.git
docker build . -t docker-impacket-smbserver
docker run -p 445:445 -v /path/to/folder/to/share/:/smbshare docker-impacket-smbserver -smb2support share /smbshare -username yourusername -password yourpassword
```

# Connect to the share from Windows machine
Copy e.g. executable from share to current directory
```
net use \\<share ip address>\share /USER:yourusername yourpassword
copy \\<share ip address>\share\<filename>.exe .
```
