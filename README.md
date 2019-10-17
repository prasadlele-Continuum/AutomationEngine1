# AutomationEngine
This is created for Automation Engine Performance Testing

 JVM_ARGS="-Xms4G -Xmx4G -XX:NewSize=512m -XX:MaxNewSize=1024m"  && export JVM_ARGS && sh /root/PT/tools/apache-jmeter-5.1.1/bin/jmeter -Jusers=100 -Jrampup=100 -Jloopcount=500 -JThinkTime=500 -JHOST=internal-alerting-int-clb-2092606691.us-east-1.elb.amazonaws.com -Jdirpath=/root/PT/projects/AutomationEngine -n -t /root/PT/projects/AutomationEngine/Automation_Engine.jmx -l /root/PT/projects/AutomationEngine/results/R5.7_50K_`date +%d%b%Y_%H%M`.jtl
