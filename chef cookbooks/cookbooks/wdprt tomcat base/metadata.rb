name             'wdprt_tomcat_base'
maintainer       ‘Jayasham’
maintainer_email ‘jayasham.x@jpmc.com'
license          'All rights reserved'
description      'Installs/Configures wdprt_tomcat_base'
long_description 'Installs/Configures wdprt_tomcat_base'
version          '1.1.27'

%w{ wdprt_middleware_java }.each do |cb|
  depends cb
end
