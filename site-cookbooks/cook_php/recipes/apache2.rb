# Install Apache and configure its service.
include_recipe 'apache2::default'

web_app 'apache2' do
  server_port '80'
  template 'apache2.conf.erb'
  server_name node[:server][:name]
  docroot node[:server][:app_path]
  allow_override 'All'
  directory_index 'index.html index.htm index.php'
end

# Open port 80 to incoming traffic.
include_recipe 'iptables'
iptables_rule 'firewall_http'

# Install the mod_php5 Apache module.
include_recipe 'apache2::mod_php5'

# Install php-mysql.
package 'php5-mysql' do
  action :install
  notifies :restart, 'service[apache2]'
end
