ReportfileName=SanityTest
Users=10
Rampup=$Users
loopcount=10
URL=internal-alerting-int-clb-1775650714.us-east-1.elb.amazonaws.com
dttime=`date +%d%b%Y_%H%M%S`
projectpath=/root/PT/projects/AutomationEngine
ThinkTime=500
filename="$ReportfileName"_"$dttime".jtl

echo
echo " ------------------------- Run Setting -------------------"
echo "Report file :  " $filename
echo "No of users : " $Users
echo "Rampup duration : " $Rampup
echo "Think Time : " $ThinkTime
echo "URL : " $URL
echo "----------------------------------------------------------"
echo

read -p "You want to continue [Y/N] : " yesno

if [ $yesno == Y ]
then
        echo "Starting the run"

        JVM_ARGS="-Xms4G -Xmx4G -XX:NewSize=256m -XX:MaxNewSize=512m -XX:+PrintGCDetails -XX:+PrintGCDateStamps -XX:+PrintGCApplicationStoppedTime -Xloggc:$projectpath/logs/GC/GC_${dttime}.log -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=9005 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.remote.ssl=false -XX:+HeapDumpOnOutOfMemoryError -XX:HeapDumpPath=$projectpath/logs/GC"  && export JVM_ARGS && sh /root/PT/tools/apache-jmeter-5.1.1/bin/jmeter -Jusers=$Users -Jrampup=$Rampup -Jloopcount=$loopcount -JThinkTime=$ThinkTime -JHOST=$URL -Jdirpath=$projectpath -n -t $projectpath/Automation_Engine.jmx -l $projectpath/results/$filename
else
        echo "Execution is skipped :) .. Bye Bye"
fi
