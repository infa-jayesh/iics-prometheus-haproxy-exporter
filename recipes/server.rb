#
# Cookbook Name:: haproxy-exporter
# Recipe:: server
#
# Copyright (c) 2019 The Authors, All Rights Reserved.

package 'haproxy' do
  action :install
end

directory '/opt/prometheus_haproxy'

cookbook_file '/opt/prometheus_haproxy/haproxy_exporter' do
  source 'haproxy_exporter'
  mode '0755'
  action :create
end

cookbook_file '/opt/prometheus_haproxy/start-promethues_haproxy.sh' do
  source 'start-promethues_haproxy.sh'
  mode '0755'
  action :create
end


cookbook_file '/opt/prometheus_haproxy/stop-promethues_haproxy.sh' do
  source 'stop-promethues_haproxy.sh'
  mode '0755'
  action :create
end

cookbook_file '/etc/init.d/promethues_haproxy_exporter' do
  source 'promethues_haproxy_exporter'
  owner 'root'
  mode '0755'
  action :create
end


service 'promethues_haproxy_exporter' do
  action :start
end
