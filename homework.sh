#! /bin/bash
echo  HELLO!!! This is my first script.
echo "system uptime : $(uptime | cut -d 'u' -f1)"
echo "kernel version : $(uname -a |cut -d '-' -f1 |awk '{print$3}')"
echo "os name : $( cat /etc/*-release |awk '(NR==2)' |cut -d '=' -f2)"
echo "os version : $(cat /etc/*-release |awk '(NR==3)' |cut -d '=' -f2)"
echo "current user : $(w |awk '(NR==3)' |awk  '{print$1}')"
echo "tty no : $(w |awk '(NR==3)' |awk  '{print$2}')"
echo "architecture : $(uname -a |awk '{print$3}' |cut -d '2' -f2 |cut -d '.' -f2)"
echo "Total memory : $(free -h |awk '(NR==2)' |awk '{print$2}')"
echo "Used memory : $(free -h |awk '(NR==2)' |awk '{print$3}')"
echo "free memory space : $(free -h |awk '(NR==2)' |awk '{print$4}')"
echo "total disk useage  : $(df -h |awk '(NR==6)' |awk '{print$2}')"
echo "used : $(df -h |awk '(NR==6)' |awk '{print$3}')"
echo "avaliable : $(df -h |awk '(NR==6)' |awk '{print$4}')"
echo "swap : $(free -h |awk '(NR==3)' |awk '{print$2}')"
echo "ip address : $(ifconfig |grep -i inet |awk '(NR==3)' |awk '{print $2}')" 
echo "subnet mask : $(ifconfig |grep -i inet |awk '(NR==3)' |awk '{print $4}')"
echo "Gateway : $(ip route |awk '(NR==3)' |awk '{print$9}')"



