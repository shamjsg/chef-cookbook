name             'wdprt_middleware_base'
maintainer       ‘jayasham’
maintainer_email ‘jayasham.x.@jpmc.com'
license          'All rights reserved'
description      'Installs/Configures wdprt_middleware_base'
long_description 'Installs/Configures wdprt_middleware_base'
version          '3.1.26'

%w{ ssh-keys }.each do |cb|
#%w{ wdprt_yum_repos ssh-keys }.each do |cb|
  depends cb
end
