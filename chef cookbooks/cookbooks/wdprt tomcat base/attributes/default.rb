#
# Cookbook Name:: wdprt_tomcat_base
# Attributes:: default
#

# Tomcat Settings
default[:wdprt_tomcat_base][:user] = "tomcat"
default[:wdprt_tomcat_base][:group] = "tomcat"


default[:wdprt_tomcat_base][:tomcatA_major_version] = "7"
default[:wdprt_tomcat_base][:tomcatA_name] = "tomcatA"
default[:wdprt_tomcat_base][:tomcatA_version] = "7.0.27"

default[:wdprt_tomcat_base][:tomcatB_major_version] = "7"
default[:wdprt_tomcat_base][:tomcatB_name] = "tomcatB"
default[:wdprt_tomcat_base][:tomcatB_version] = "7.0.27"


##### Settings that should not be changed
# Tomcat A
default[:wdprt_tomcat_base][:tomcatA_home] = "/usr/share/tomcatA/tomcat"
default[:wdprt_tomcat_base][:tomcatA1_base] = "/opt/middleware/tomcatA/tomcatA1"
default[:wdprt_tomcat_base][:tomcatA2_base] = "/opt/middleware/tomcatA/tomcatA2"
default[:wdprt_tomcat_base][:tomcatA3_base] = "/opt/middleware/tomcatA/tomcatA3"
default[:wdprt_tomcat_base][:tomcatA4_base] = "/opt/middleware/tomcatA/tomcatA4"
default[:wdprt_tomcat_base][:tomcatA1_log_dir] = "/var/log/tomcatA/tomcatA1"
default[:wdprt_tomcat_base][:tomcatA2_log_dir] = "/var/log/tomcatA/tomcatA2"
default[:wdprt_tomcat_base][:tomcatA3_log_dir] = "/var/log/tomcatA/tomcatA3"
default[:wdprt_tomcat_base][:tomcatA4_log_dir] = "/var/log/tomcatA/tomcatA4"


default[:wdprt_tomcat_base][:tomcatA1_http_port] = "8081"
default[:wdprt_tomcat_base][:tomcatA2_http_port] = "8082"
default[:wdprt_tomcat_base][:tomcatA3_http_port] = "8083"
default[:wdprt_tomcat_base][:tomcatA4_http_port] = "8084"

default[:wdprt_tomcat_base][:tomcatA1_https_port] = "8041"
default[:wdprt_tomcat_base][:tomcatA2_https_port] = "8042"
default[:wdprt_tomcat_base][:tomcatA3_https_port] = "8043"
default[:wdprt_tomcat_base][:tomcatA4_https_port] = "8044"

default[:wdprt_tomcat_base][:tomcatA1_ajp_port] = "8101"
default[:wdprt_tomcat_base][:tomcatA2_ajp_port] = "8102"
default[:wdprt_tomcat_base][:tomcatA3_ajp_port] = "8103"
default[:wdprt_tomcat_base][:tomcatA4_ajp_port] = "8104"

default[:wdprt_tomcat_base][:tomcatA1_shutdown_port] = "8201"
default[:wdprt_tomcat_base][:tomcatA2_shutdown_port] = "8202"
default[:wdprt_tomcat_base][:tomcatA3_shutdown_port] = "8203"
default[:wdprt_tomcat_base][:tomcatA4_shutdown_port] = "8204"

default[:wdprt_tomcat_base][:tomcatA1_jmx_port] = "8301"
default[:wdprt_tomcat_base][:tomcatA2_jmx_port] = "8302"
default[:wdprt_tomcat_base][:tomcatA3_jmx_port] = "8303"
default[:wdprt_tomcat_base][:tomcatA4_jmx_port] = "8304"

default[:wdprt_tomcat_base][:tomcatA1_use_security_manager] = "no"
default[:wdprt_tomcat_base][:tomcatA2_use_security_manager] = "no"
default[:wdprt_tomcat_base][:tomcatA3_use_security_manager] = "no"
default[:wdprt_tomcat_base][:tomcatA4_use_security_manager] = "no"

# Tomcat B
default[:wdprt_tomcat_base][:tomcatB_home] = "/usr/share/tomcatB/tomcat"
default[:wdprt_tomcat_base][:tomcatB1_base] = "/opt/middleware/tomcatB/tomcatB1"
default[:wdprt_tomcat_base][:tomcatB2_base] = "/opt/middleware/tomcatB/tomcatB2"
default[:wdprt_tomcat_base][:tomcatB3_base] = "/opt/middleware/tomcatB/tomcatB3"
default[:wdprt_tomcat_base][:tomcatB4_base] = "/opt/middleware/tomcatB/tomcatB4"
default[:wdprt_tomcat_base][:tomcatB1_log_dir] = "/var/log/tomcatB/tomcatB1"
default[:wdprt_tomcat_base][:tomcatB2_log_dir] = "/var/log/tomcatB/tomcatB2"
default[:wdprt_tomcat_base][:tomcatB3_log_dir] = "/var/log/tomcatB/tomcatB3"
default[:wdprt_tomcat_base][:tomcatB4_log_dir] = "/var/log/tomcatB/tomcatB4"

default[:wdprt_tomcat_base][:tomcatB1_http_port] = "9081"
default[:wdprt_tomcat_base][:tomcatB2_http_port] = "9082"
default[:wdprt_tomcat_base][:tomcatB3_http_port] = "9083"
default[:wdprt_tomcat_base][:tomcatB4_http_port] = "9084"

default[:wdprt_tomcat_base][:tomcatB1_https_port] = "9041"
default[:wdprt_tomcat_base][:tomcatB2_https_port] = "9042"
default[:wdprt_tomcat_base][:tomcatB3_https_port] = "9043"
default[:wdprt_tomcat_base][:tomcatB4_https_port] = "9044"

default[:wdprt_tomcat_base][:tomcatB1_ajp_port] = "9101"
default[:wdprt_tomcat_base][:tomcatB2_ajp_port] = "9102"
default[:wdprt_tomcat_base][:tomcatB3_ajp_port] = "9103"
default[:wdprt_tomcat_base][:tomcatB4_ajp_port] = "9104"

default[:wdprt_tomcat_base][:tomcatB1_shutdown_port] = "9201"
default[:wdprt_tomcat_base][:tomcatB2_shutdown_port] = "9202"
default[:wdprt_tomcat_base][:tomcatB3_shutdown_port] = "9203"
default[:wdprt_tomcat_base][:tomcatB4_shutdown_port] = "9204"

default[:wdprt_tomcat_base][:tomcatB1_jmx_port] = "9301"
default[:wdprt_tomcat_base][:tomcatB2_jmx_port] = "9302"
default[:wdprt_tomcat_base][:tomcatB3_jmx_port] = "9303"
default[:wdprt_tomcat_base][:tomcatB4_jmx_port] = "9304"

default[:wdprt_tomcat_base][:tomcatB1_use_security_manager] = "no"
default[:wdprt_tomcat_base][:tomcatB2_use_security_manager] = "no"
default[:wdprt_tomcat_base][:tomcatB3_use_security_manager] = "no"
default[:wdprt_tomcat_base][:tomcatB4_use_security_manager] = "no"

# First Run Settings
default[:zdd][:tomcatA] = "Dark"