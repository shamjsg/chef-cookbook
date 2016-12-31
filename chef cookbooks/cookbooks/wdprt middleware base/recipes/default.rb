#
# Cookbook Name:: wdprt_middleware_base
# Recipe:: default
#
# Copyright (C) 2016 Jayasham
#
# All rights reserved - Do Not Redistribute
#


# Create the rundeck group
group "rundeck" do
  action :create
  gid 25638
  not_if "grep rundeck /etc/group"
end

# Create the rundeck user
user "rundeck" do
  supports :manage_home => true
  comment "Rundeck Service ID - WDPRT - jamey.l.goldberg"
  uid 35638
  gid 25638
  home "/home/rundeck"
  shell "/bin/bash"
  password "$1$OAXXLEkt$qaqBpThGoQqOiXtwAduio/"
end

execute "setup password expiration for rundeck" do
  command "chage -I -1 -m 0 -M 99999 -E -1 rundeck"
  action :run
  only_if { %x( /usr/bin/chage -l rundeck | grep "password must be changed" ) }
end

# Create bash profile for rundeck user
template "/home/rundeck/.bash_profile" do
  source "bash_profile.erb"
  owner "rundeck"
  group "rundeck"
  mode "0744"
end

#create the ondeploy group
group "onedeploy" do
  action :create
  gid 25640
  not_if "grep onedeploy /etc/group"
end

# Create the onedeploy user
user "onedeploy" do
  supports :manage_home => true
  comment "onedeploy Service ID - WDPRT - jamey.l.goldberg"
  uid 35640
  gid 25640
  home "/home/onedeploy"
  shell "/bin/bash"
  password "$1$OAXXLEkt$qaqBpThGoQqOiXtwAduio/"
end

execute "setup password expiration for onedeploy" do
  command "chage -I -1 -m 0 -M 99999 -E -1 onedeploy"
  action :run
  only_if { %x( /usr/bin/chage -l onedeploy | grep "password must be changed" ) }
end

# Create bash profile for onedeploy user
template "/home/onedeploy/.bash_profile" do
  source "bash_profile.erb"
  owner "onedeploy"
  group "onedeploy"
  mode "0744"
end


# Create the /etc/sudoers.d dir if not there
directory "/etc/sudoers.d" do
  owner 'root'
  group 'root'
  mode '0750'
  action :create
end

# Add the middleware group and rundeck to /etc/sudoers.d
template "/etc/sudoers.d/middleware_conf" do
  source "middleware_conf.erb"
  owner "root"
  group "root"
  mode "0440"
end

cookbook_file '/etc/cron.hourly/logrotate' do
  source 'logrotate'
  owner 'root'
  group 'root'
  mode '0755'
end


# Add the line into /etc/sudoers that we need so it will read the dir
sudoline = '#includedir /etc/sudoers.d'

file = Chef::Util::FileEdit.new('/etc/sudoers')
file.insert_line_if_no_match(/#{sudoline}/, sudoline)
file.write_file

#include_recipe "wdprt_yum_repos::default"
include_recipe "ssh-keys"
