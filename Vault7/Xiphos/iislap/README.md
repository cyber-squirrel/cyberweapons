# DoS Exploit for MS-15-034, http.sys Remote Denial of Service/Remote Code Execution, for IIS.

The "http.sys" component in Microsoft Windows is vulnerable to a denial of service or remote code execution exploit. Microsoft is witholding exact details of the vulnerability currently, however denial of service exploit code is becoming available in the wild and in use, hence, we decided to release our proof of concept utility for the vulnerability.  
The impact of this vulnerability is that it can cause a denial of service condition against the host ("Blue Screen of Death"), or, lead to remote code execution under the context of the SYSTEM user on the affected host. This leads either to complete loss of availability, or, complete compromise of confidentiality and integrity of data on the host, and probable loss of availability.  

## Usage
To use this exploit/test utility, there are 4 arguments. -t/--target, which is mandatory, and is the IP address or hostname of the target host, -p/--port, the target port, which defaults to 80, -s/--ssl, which tells it to use SSL (defaults to no ssl), and -f/--file, which is the path to the file you wish to GET on the remote host. This defaults to "/", or the webroot. It should be noted that the denial of service condition seems to happen repeatably if you supply it with a file to GET instead of just the webroot, and this sho
uld be taken into account during testing. Static files are the ones to watch out for - dynamic files such as ones generated by server side scripts (such as ASP.NET pages), do not tend 
to lead to the box falling over. If you REALLY want to DoS the box (as a PoC, not recommended!), set the -k, or --kill flag. This leads to a far more reliable denial of service 
condition if combined with -f.

## Screenshots of Use/Example Use
Here we have a screenshot of testing without SSL.  
![no ssl](https://raw.githubusercontent.com/XiphosResearch/exploits/master/iislap/screenshots/no-ssl.png)

And here we have a screenshot of testing with SSL.  
![no ssl](https://raw.githubusercontent.com/XiphosResearch/exploits/master/iislap/screenshots/with-ssl.png)

## Licence
Licenced under the [WTFPL][wtfpl]

[wtfpl]: http://www.wtfpl.net/
