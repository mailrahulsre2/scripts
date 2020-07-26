# Install Apache
#
package 'httpd'

# Configure Apache

template '/etc/httpd/conf/httpd.conf' do
  source 'httpd.conf.erb'
end

template '/etc/httpd/conf.d/proxypass.conf' do
  source 'proxypass.conf.erb'
end

# Apache config reload and start
#
service 'httpd' do
  action [:enable, :reload, :start]
end
