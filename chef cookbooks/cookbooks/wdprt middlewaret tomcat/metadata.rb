name             'wdprt_middleware_tomcat_zdd'
maintainer       ‘Jayasham’
maintainer_email ‘jayasham.x@jpmc.com'
license          'All rights reserved'
description      'Installs/Configures wdprt_middleware_tomcat_zdd'
long_description 'Installs/Configures wdprt_middleware_tomcat_zdd'
version          '2.0.9'

%w{ wdprt_middleware_java }.each do |cb|
  depends cb
end
