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
default[:server][:user]     = 'webapp'
default[:server][:group]    = 'webapp'
default[:server][:app_name] = 'webapp'
default[:server][:app_path] = '/vagrant/www'

# apache config setting
default['apache']['log_dir']              = "#{node[:server][:app_path]}/log"
default['apache']['user']                 = node[:server][:user]
default['apache']['group']                = node[:server][:group]
default['apache']['contact']              = 'chouandy625@gmail.com'
default['apache']['default_site_enabled'] = false
default['iptables']['install_rules']      = false

# mysql config settings
default[:mysql][:root_pass] = 'webapp'
default[:mysql][:host]      = '127.0.0.1'
default[:mysql][:username]  = 'webapp'
default[:mysql][:password]  = 'webapp'
