package 'httpd'

file '/var/www/html/index.html' do
  content 'welcome to devops'
end

template '/etc/httpd/conf.d/proxy-pass.conf' do
  source 'proxy-pass.conf.erb'
end

service 'httpd' do
  action :start
  action :enable
end

