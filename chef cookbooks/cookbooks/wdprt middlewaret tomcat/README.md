# wdprt_middleware_tomcat_zdd-cookbook

This is the cookbook that the WDPRT middleware team uses to install 2 different instances of Tomcat7. We use two different instances so that we can use the ZDD stratagy both with the application under tomcat and the tomcat binaries themselves.

## Supported Platforms

Redhat EL5/6 CentOs 5/6

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['user']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>tomcat</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['group']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>tomcat</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatA_version']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>7.0.27</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatA_target']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>/usr/share/tomcatA</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatA_port']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>8080</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatA_ssl_port']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>8443</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatA_ajp_port']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>8009</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatA_java_options']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>-Xmx128M -Dajva.awt.headless=true</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatA_use_security_manager']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>no</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatA_home']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>/usr/share/tomcatA/tomcat</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatA_base']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>/usr/share/tomcatA/tomcat</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatA_config_dir']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>/usr/share/tomcatA/tomcat/conf</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatA_log_dir']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>/var/log/tomcatA</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatB_version']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>7.0.27</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatB_target']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>/usr/share/tomcatB</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatB_port']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>8081</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatB_ssl_port']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>8444</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatB_ajp_port']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>8010</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatB_java_options']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>-Xmx128M -Dajva.awt.headless=true</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatB_use_security_manager']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>no</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatB_home']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>/usr/share/tomcatB/tomcat</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatB_base']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>/usr/share/tomcatB/tomcat</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatB_config_dir']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>/usr/share/tomcatB/tomcat/conf</tt></td>
  </tr>
  <tr>
  <td><tt>['wdprt_middleware_tomcat_zdd']['tomcatB_log_dir']</tt></td>
  <td>Boolean</td>
  <td>whether to include bacon</td>
  <td><tt>/var/log/tomcatB</tt></td>
  </tr>
</table>

## Usage

### wdprt_middleware_tomcat_zdd::default

Include `wdprt_middleware_tomcat_zdd` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[wdprt_middleware_tomcat_zdd::default]"
  ]
}
```

## License and Authors

Author:: jaya sham (jayasham.x@jpmc.com>)
