#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2018 The Authors, All Rights Reserved.
package 'httpd' do
  action :install
end

service 'httpd' do
  action [ :enable, :start ]
end

file '/var/www/html/index.html' do
  content '<html>Hello, world!</html>'
  action :create
end
