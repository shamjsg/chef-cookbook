
Deployment recepie in JPMC 

# Recipe:: default
#
# Copyright Jayasham.
# include_recipe 'jpmc_was'
# include_recipe 'jpmc_jython'
#
# directory "#{node['jpmc_wasdeploy']['was_home']}/#{node['jpmc_wasdeploy']['profile_name']}/lib" do
#   owner node['jpmc_wasdeploy']['user']
#   group node['jpmc_wasdeploy']['group']
#   action :create
#   recursive true
# end
#
# remote_file "#{node['jpmc_wasdeploy']['was_home']}/#{node['jpmc_wasdeploy']['profile_name']}/lib/ojdbc6.jar" do
#   source node['jpmc_wasdeploy']['ojdbc_url']
#   owner node['jpmc_wasdeploy']['user']
#   group node['jpmc_wasdeploy']['group']
#   action :create
# end

remote_file "#{Chef::Config[:file_cache_path]}/jpmcoadridgeApplication.war" do
  source node['jpmc_wasdeploy']['warfile_url']
  owner node['jpmc_wasdeploy']['user']
  group node['jpmc_wasdeploy']['group']
  action :create
end

template "#{Chef::Config[:file_cache_path]}/deploy.jython" do
  source 'deploy.jython.erb'
  owner 'root'
  group 'root'
  mode 0700
  variables(
    war_location: "#{Chef::Config[:file_cache_path]}/jpmcoadridgeApplication.war",
    profile_name: node['jpmc_wasdeploy']['profile_name'],
    app_name: node['jpmc_wasdeploy']['app_name'],
    context_name: node['jpmc_wasdeploy']['context_name'],
    jndi_name: node['jpmc_wasdeploy']['jndi_name']
  )
end

execute 'deploy the war file' do
  cwd "#{node['jpmc_wasdeploy']['was_home']}/bin"
  command "./wsadmin.sh -f #{Chef::Config[:file_cache_path]}/deploy.jython -lang jython"
end

template "#{Chef::Config[:file_cache_path]}/FluentApiTesting-config.properties" do
  source 'FluentApiTesting-config.properties.erb'
  owner 'root'
  group 'root'
  mode 0700
end

remote_file "#{Chef::Config[:file_cache_path]}/FluentApiTesting.jar" do
  source node['jpmc_wasdeploy']['jarfile_url']
  owner 'root'
  group 'root'
  action :create
  mode 0700
end

template "#{Chef::Config[:file_cache_path]}/FluentApiTesting.sh" do
  source 'FluentApiTesting.sh.erb'
  owner 'root'
  group 'root'
  mode 0700
end

execute 'test the war file' do
  cwd "#{Chef::Config[:file_cache_path]}"
  command "./FluentApiTesting.sh"
end
