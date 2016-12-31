#
# Cookbook Name:: wdprt_middleware_tomcat7_zdd
# Attributes:: default
#

# Common elements to both installs
default[:wdprt_middleware_tomcat_zdd][:user] = "tomcat"
default[:wdprt_middleware_tomcat_zdd][:group] = "tomcat"

# Set the options for tocmatA
default[:wdprt_middleware_tomcat_zdd][:tomcatA_name] = "tomcatA"
default[:wdprt_middleware_tomcat_zdd][:tomcatA_version] = "7.0.27"
default[:wdprt_middleware_tomcat_zdd][:tomcatA_target] = "/usr/share/tomcatA"
default[:wdprt_middleware_tomcat_zdd][:tomcatA_port] = 8080
default[:wdprt_middleware_tomcat_zdd][:tomcatA_ssl_port] = 8443
default[:wdprt_middleware_tomcat_zdd][:tomcatA_ajp_port] = 8009
default[:wdprt_middleware_tomcat_zdd][:tomcatA_use_security_manager] = "no"
set[:wdprt_middleware_tomcat_zdd][:tomcatA_home] = "/usr/share/tomcatA/tomcat"
set[:wdprt_middleware_tomcat_zdd][:tomcatA_base] = "/usr/share/tomcatA/tomcat"
set[:wdprt_middleware_tomcat_zdd][:tomcatA_config_dir] = "/usr/share/tomcatA/tomcat/conf"
set[:wdprt_middleware_tomcat_zdd][:tomcatA_log_dir] = "/var/log/tomcatA"

# Set the options for tocmatB
default[:wdprt_middleware_tomcat_zdd][:tomcatB_name] = "tomcatB"
default[:wdprt_middleware_tomcat_zdd][:tomcatB_version] = "7.0.27"
default[:wdprt_middleware_tomcat_zdd][:tomcatB_target] = "/usr/share/tomcatB"
default[:wdprt_middleware_tomcat_zdd][:tomcatB_port] = 8090
default[:wdprt_middleware_tomcat_zdd][:tomcatB_ssl_port] = 8453
default[:wdprt_middleware_tomcat_zdd][:tomcatB_ajp_port] = 8019
default[:wdprt_middleware_tomcat_zdd][:tomcatB_use_security_manager] = "no"
set[:wdprt_middleware_tomcat_zdd][:tomcatB_home] = "/usr/share/tomcatB/tomcat"
set[:wdprt_middleware_tomcat_zdd][:tomcatB_base] = "/usr/share/tomcatB/tomcat"
set[:wdprt_middleware_tomcat_zdd][:tomcatB_config_dir] = "/usr/share/tomcatB/tomcat/conf"
set[:wdprt_middleware_tomcat_zdd][:tomcatB_log_dir] = "/var/log/tomcatB"
