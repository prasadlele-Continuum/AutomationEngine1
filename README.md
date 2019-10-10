# AutomationEngine
This is created for Automation Engine Performance Testing

sh ../jmeter -Jusers=10 -Jrampup=30 -Jloopcount=50 -Jdirpath=/root/PT/projects/AutomationEngine -n -t /root/PT/projects/AutomationEngine/Automation_Engine.jmx -l /root/PT/projects/AutomationEngine/results/testrun1.jtl  -e -o /root/PT/projects/AutomationEngine/results/html
