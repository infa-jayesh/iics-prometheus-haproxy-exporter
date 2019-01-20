echo "Stopping haproxy_exporter"
PID=`ps aux | grep haproxy_exporter | grep -v grep | awk '{print $2}'`
sudo kill -9 $PID 2&> /dev/null
if [ $? -eq 0 ]
then
echo "haproxy_exporter stopped successfully"
exit
else 
echo "Unable to stop..try to stop/kill process manually"
fi

