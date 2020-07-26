#
# Cookbook:: httpd-1030-weekend
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
package 'httpd'

service 'httpd' do
  action [ :enable, :start ]
end
