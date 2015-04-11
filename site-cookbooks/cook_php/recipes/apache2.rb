include_recipe 'apache2'

web_app 'apache2' do
  server_port '80'
  template 'web_app.conf.erb'
  server_name node[:server][:name]
  docroot node[:server][:app_path]
  allow_override 'All'
  directory_index 'index.html index.htm'
end
