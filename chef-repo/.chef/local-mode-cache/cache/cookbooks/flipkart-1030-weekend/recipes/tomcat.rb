package 'tomcat7' do
    action :install
end
  
package 'tomcat7-webapps' do
    action :remove
    action :install
end
  
package 'tomcat7-admin-webapps' do
    action :remove
    action :install
end
  
template '/usr/share/tomcat7/conf/tomcat-users.xml' do
    source 'tomcat-users.xml.erb'
end
  
bash 'copy-war-file' do
  user 'root'
  cwd '/usr/share/tomcat7/webapps'
  code <<-EOH
  rm -f SampleWebApp123.war
  rm -rf SampleWebApp123
  sleep 3
  aws s3 cp s3://flipkart-1030-weekend/SampleWebApp123.war .
EOH
end
  
service 'tomcat7' do
  action :enable
  action :restart
end
