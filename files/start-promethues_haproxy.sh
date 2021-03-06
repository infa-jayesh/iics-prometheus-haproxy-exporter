cd /opt/prometheus_haproxy 
echo "Starting haproxy_exporter"
./haproxy_exporter --haproxy.scrape-uri 'http://infaops:opsinfa@localhost:1933/' 2> /dev/null &

proc_count=`ps aux | grep haproxy_exporter | grep -v grep | wc -l`

if [ $proc_count -gt 0 ]
then
echo 'haproxy_exporter started successfully.. You can test metrics endpoint "curl http://localhost:9101/metrics"'
else
echo "haproxy_exporter failed to start"
fi
