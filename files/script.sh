mkdir /opt/prometheus_haproxy
cp -av * /opt/prometheus_haproxy
cp -av promethues_haproxy_exporter /etc/init.d/
service promethues_haproxy_exporter start
curl http://localhost:9101/metrics
