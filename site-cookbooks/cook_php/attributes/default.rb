#
# Cookbook Name:: cook_rails
# Attributes:: default
#
# Copyright 2014-2014, Mercicc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# server config settings for vagrant
default[:server][:user]     = 'vagrant'
default[:server][:group]    = 'vagrant'
default[:server][:app_name] = 'vagrant'
default[:server][:app_path] = '/vagrant/www'

# php config settings
default['php-fpm']['user']      = node[:server][:user]
default['php-fpm']['group']     = node[:server][:group]
default['php-fpm']['error_log'] =  "#{node[:server][:app_path]}/log/php5-fpm.log"

# mysql config settings
default[:mysql][:version]   = '5.5'
default[:mysql][:root_pass] = 'pass'
default[:mysql][:host]      = 'localhost'
default[:mysql][:port]      = '3306'
default[:mysql][:socket]    = '/tmp/mysql.sock'
default[:mysql][:username]  = 'vagrant'
default[:mysql][:password]  = 'vagrant'

# nginx config settings for vagrant
default[:nginx][:default_site_enabled]       = false
default[:cook_php][:nginx][:config_name]     = node[:server][:app_name]
default[:cook_php][:nginx][:server_name]     = node[:server][:name]
default[:cook_php][:nginx][:root]            = node[:server][:app_path]
default[:cook_php][:nginx][:access_log_file] = "#{node[:server][:app_path]}/log/nginx.access.log"
default[:cook_php][:nginx][:error_log_file]  = "#{node[:server][:app_path]}/log/nginx.error.log"

# nginx config setting
default['apache']['log_dir']              = "#{node[:server][:app_path]}/log"
default['apache']['user']                 = node[:server][:user]
default['apache']['group']                = node[:server][:group]
default['apache']['contact']              = "chouandy625@gmail.com"
default['apache']['default_site_enabled'] = false
