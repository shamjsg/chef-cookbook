#
# Cookbook Name:: wdprt_middleware_java
# Recipe:: default
#
# Copyright (C) 2016 Jayasham
#
# All rights reserved - Do Not Redistribute
#

include_recipe "java::oracle"

########################
# Deploy/Update CA Certs
########################

# Define CA Path
caPath = '/usr/lib/jvm/java/jre/lib/security'
keyTool = '/usr/lib/jvm/java/bin/keytool'

# Define Certs
@caFile = [
'TWDC-root.cer',
'TWDC-xcert.cer',
'TWDC-Issuing.cer',
'twdcCA.pem',
'enterpriseca.pem'
]

# Define Labels
@label = [
'TWDC_Root',
'TWDC_xCert',
'TWDC_Issuing',
'TWDC_CA',
'TWDC_Enterprise_CA'
]

# Create/Update CA Certs
@caFile.zip(@label).each do |caFile, label|
	cookbook_file "#{caPath}/#{caFile}" do
      owner 'root'
      group 'root'
      mode "0755"
	  source "#{caFile}"
#	  notifies :run, 'execute[Import]', :immediately
      action :create
    end
	
	execute 'Import' do
	  command "#{keyTool} -import -trustcacerts -file #{caFile} -alias #{label} -keystore cacerts -storepass changeit -noprompt"
          returns [0, 1]
	  cwd "#{caPath}"
	  user 'root'
	  subscribes :run, "cookbook_file[#{caPath}/#{caFile}]", :immediately
	  action :nothing
	end
end	
