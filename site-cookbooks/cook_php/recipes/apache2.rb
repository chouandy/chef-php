# Install Apache and configure its service.
include_recipe 'apache2::default'

web_app 'apache2' do
  template 'apache2.conf.erb'
  server_name node[:server][:name]
  docroot node[:server][:app_path]
  allow_override 'All'
  directory_index 'index.html index.htm index.php'
end

# Open port 80 to incoming traffic.
include_recipe 'apache2::iptables'

# Install the mod_php5 Apache module.
include_recipe 'apache2::mod_php5'
include_recipe 'apache2::mod_rewrite'
include_recipe 'apache2::mod_xsendfile'

# Install php-mysql.
package 'php5-mysql' do
  action :install
  notifies :restart, 'service[apache2]'
end
