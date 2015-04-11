# setup nginx
include_recipe 'nginx'

template node['nginx']['dir'] + '/sites-available/' + node[:cook_php][:nginx][:config_name] do
  source 'nginx.conf.erb'
  owner node[:server][:user]
  group node[:server][:group]
  mode 0644
  notifies :reload, 'service[nginx]'
end

nginx_site node[:cook_php][:nginx][:config_name] do
  enable true
end
