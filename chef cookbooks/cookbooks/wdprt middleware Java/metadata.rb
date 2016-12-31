name             'wdprt_middleware_java'
maintainer       ‘Jayasham’
maintainer_email ‘jayasham.x@jpmc.com'
license          'All rights reserved'
description      'Installs/Configures wdprt_middleware_java'
long_description 'Installs/Configures wdprt_middleware_java'

version          '2.1.1'

%w{ java }.each do |cb|
  depends cb
end
