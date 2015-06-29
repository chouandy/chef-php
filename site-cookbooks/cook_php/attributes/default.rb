# server config settings for vagrant
default[:server][:user]      = 'vagrant'
default[:server][:group]     = 'vagrant'
default[:server][:app_name]  = 'vagrant'
default[:server][:app_path]  = '/vagrant/www'

# apache config setting
default['apache']['mpm']     = 'prefork'
default['apache']['log_dir'] = "#{node[:server][:app_path]}/log"
default['apache']['user']    = node[:server][:user]
default['apache']['group']   = node[:server][:group]
default['apache']['contact'] = 'chouandy625@gmail.com'

# mysql config settings
default[:mysql][:root_pass]  = 'root'
default[:mysql][:host]       = '127.0.0.1'
default[:mysql][:username]   = 'vagrant'
default[:mysql][:password]   = 'vagrant'
