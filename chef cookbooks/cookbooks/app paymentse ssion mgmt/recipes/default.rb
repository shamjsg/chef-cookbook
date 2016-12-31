#
# Cookbook Name:: app_payment_session_mgmt
# Recipe:: default
#
# Copyright (C) 2016 Jayasham
#
# All rights reserved - Do Not Redistribute
#

if node['middleware']['deployable'] == "TRUE"

  # Get the number of instances on the server
  case node['middleware']['size']
  when 'small'
    instances = [1]
  when 'medium'
    instances = [1, 2]
  when 'large'
    instances = [1, 2, 3, 4]
  end

  # Check and see what instance we should be deploying to
  if node['zdd']['tomcatA'] == 'Dark'
    darktomcat = 'A'
    littomcat = 'B'
  end
  if node['zdd']['tomcatB'] == 'Dark'
    darktomcat = 'B'
    littomcat = 'A'
  end

  

  # Loop through the instances and clean out the webapps directory and get ready for the application
  for instance in instances.each do
    execute "clean_tomcat#{darktomcat}_webapps" do
      command "rm -rf /opt/middleware/tomcat#{darktomcat}/tomcat#{darktomcat}#{instance}/webapps/*"
      action :run
    end

    # Now we will loop through the applications that are defined at the role level  (  application name or type)
    node['applications'].each do |app_name, app_data|
      # Set the vars so it is a little eaiser to ref throughout the code
      appuser = app_data['user']
      appgroup = app_data['group']
      nexus_group = app_data['nexus_group']
      nexus_version = app_data['version']
      artifact_type = app_data['artifact_type']
      war_name = app_data['war_name']
      nexus_base = node['env_info']['nexus_base']
      nexus_repo = node['env_info']['nexus_repo']

      

      # Deploy all the war files that are listed as applications in the role. The version is set on the node.
      remote_file "/opt/middleware/tomcat#{darktomcat}/tomcat#{darktomcat}#{instance}/webapps/#{war_name}" do
        source "#{nexus_base}?r=#{nexus_repo}&g=#{nexus_group}&a=#{app_name}&p=#{artifact_type}&v=#{nexus_version}"
        owner 'tomcat'
        group 'tomcat'
        mode '0644'
        action :create
      end

      



       # These seem to get whacked every time it runs.
      [ "/var/opt/apps/WDPRApps/app_session_services/log/",
	    "/var/opt/apps/WDPRApps/app_services/log/"
          ].each do |path|
            directory path do
            owner 'tomcat'
            group 'tomcat'
            recursive true
            mode "0755"
            action :create
         end
      end

      

    

      end
  end


  node.set['zdd']["tomcat#{darktomcat}"] = 'Lit'
  node.set['zdd']["tomcat#{littomcat}"] = 'Dark'


  template "/opt/middleware/tomcat#{darktomcat}/common/chef.conf" do
    source 'chef.conf.erb'
    owner 'root'
    group 'root'
    mode '0744'
  end

  for instance in instances.each do
    service "tomcat#{littomcat}#{instance}" do
      action :stop
    end

    service "tomcat#{darktomcat}#{instance}" do
      action :restart
    end
    # This app never seems to work the first time around. Bounce it again?
    #
    execute "app-needs-second-restart" do
      command "echo Sleeping between restarts ; sleep 60"
      action :run
    end

    service "tomcat#{darktomcat}#{instance}" do
      action :restart
    end

  end
end

#template '/etc/profile.d/middleware.sh' do
#  source 'middleware.sh.erb'
#  owner 'root'
#  group 'root'
#  mode '0755'
#end

node.set['middleware'][:deployable] = 'FALSE'

