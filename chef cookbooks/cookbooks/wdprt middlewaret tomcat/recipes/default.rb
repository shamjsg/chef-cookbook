#
# Cookbook Name:: wdprt_middleware_tomcat_zdd
# Recipe:: default
#
# Copyright (C) 2016 Jayasham
#
# All rights reserved - Do Not Redistribute
#


# check and see if we have ran and if so don't run again


# include java to make sure it is there
include_recipe "wdprt_middleware_java"

tcuser = node["wdprt_middleware_tomcat_zdd"]["user"]
tcgroup = node["wdprt_middleware_tomcat_zdd"]["group"]

# Create the tomcat group if it does not exist

group "#{tcgroup}" do
  action :create
  gid 25985
  not_if "grep #{tcgroup} /etc/group"
end

# Add the tomcat user if it does not exist

user "#{tcuser}" do
  supports :manage_home => true
  comment "Apache Tomcat Service ID - WDPR - jamey.l.goldberg"
  uid 35985
  gid 25985
  home "/home/tomcat"
  shell "/bin/bash"
  password "$1$kbpYRiPF$ulhQgD6kkw848S24pXkWl/"
  not_if "grep #{tcuser} /etc/passwd"
end

template "/home/tomcat/.bash_profile" do
  source "bash_profile.erb"
  owner "#{tcuser}"
  group "#{tcgroup}"
  mode "0700"
end

directory "/usr/share/tomcatA" do
  owner "#{tcuser}"
  group "#{tcgroup}"
  recursive true
  mode "0755"
  action :create
  not_if { ::File.directory?("/usr/share/tomcatA") }
end

directory "/usr/share/tomcatB" do
  owner "#{tcuser}"
  group "#{tcgroup}"
  recursive true
  mode "0755"
  action :create
  not_if { ::File.directory?("/usr/share/tomcatB") }
end


directory "/opt/middleware" do
  owner "#{tcuser}"
  group "#{tcgroup}"
  recursive true
  mode "0755"
  action :create
  not_if { ::File.directory?("/opt/middleware") }
end


# create the storage directory for the tarballs and middleware scripts
directory "/opt/middleware/software" do
  owner "#{tcuser}"
  group "#{tcgroup}"
  recursive true
  mode "0755"
  action :create
  not_if { ::File.directory?("/opt/middleware/software") }
end

# create the storage directory for the tarballs and middleware scripts
directory "/opt/middleware/tomcat_config" do
  owner "#{tcuser}"
  group "#{tcgroup}"
  recursive true
  mode "0755"
  action :create
  not_if { ::File.directory?("/opt/middleware/tomcat_config") }
end

directory "/opt/middleware/Tools" do
  owner "#{tcuser}"
  group "#{tcgroup}"
  recursive true
  mode "0755"
  action :create
  not_if { ::File.directory?("/opt/middleware/Tools") }
end

directory "/opt/middleware/applications" do
  owner "#{tcuser}"
  group "#{tcgroup}"
  recursive true
  mode "0755"
  action :create
  not_if { ::File.directory?("/opt/middleware/applications") }
end

directory "/opt/middleware/applications/tomcatA" do
  owner "#{tcuser}"
  group "#{tcgroup}"
  recursive true
  mode "0755"
  action :create
  not_if { ::File.directory?("/opt/middleware/applications/tomcatA") }
end

directory "/opt/middleware/applications/tomcatA/config" do
  owner "#{tcuser}"
  group "#{tcgroup}"
  recursive true
  mode "0755"
  action :create
  not_if { ::File.directory?("/opt/middleware/applications/tomcatA/config") }
end

directory "/opt/middleware/applications/tomcatA/lib" do
  owner "#{tcuser}"
  group "#{tcgroup}"
  recursive true
  mode "0755"
  action :create
  not_if { ::File.directory?("/opt/middleware/applications/tomcatA/lib") }
end

directory "/opt/middleware/applications/tomcatA/ssl" do
  owner "#{tcuser}"
  group "#{tcgroup}"
  recursive true
  mode "0755"
  action :create
  not_if { ::File.directory?("/opt/middleware/applications/tomcatA/ssl") }
end

directory "/opt/middleware/applications/tomcatB" do
  owner "#{tcuser}"
  group "#{tcgroup}"
  recursive true
  mode "0755"
  action :create
  not_if { ::File.directory?("/opt/middleware/applications/tomcatB") }
end

directory "/opt/middleware/applications/tomcatB/config" do
  owner "#{tcuser}"
  group "#{tcgroup}"
  recursive true
  mode "0755"
  action :create
  not_if { ::File.directory?("/opt/middleware/applications/tomcatB/config") }
end

directory "/opt/middleware/applications/tomcatB/lib" do
  owner "#{tcuser}"
  group "#{tcgroup}"
  recursive true
  mode "0755"
  action :create
  not_if { ::File.directory?("/opt/middleware/applications/tomcatB/lib") }
end

directory "/opt/middleware/applications/tomcatB/ssl" do
  owner "#{tcuser}"
  group "#{tcgroup}"
  recursive true
  mode "0755"
  action :create
  not_if { ::File.directory?("/opt/middleware/applications/tomcatB/ssl") }
end

# do the binary installs and configure
include_recipe "wdprt_middleware_tomcat_zdd::tomcatA"
include_recipe "wdprt_middleware_tomcat_zdd::tomcatB"
