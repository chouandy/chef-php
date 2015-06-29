# Configure the mysql2 Ruby gem.
mysql2_chef_gem 'default' do
  action :install
end

# Configure the MySQL client.
mysql_client 'default' do
  action :create
end

# Configure the MySQL service.
mysql_service 'default' do
  initial_root_password node[:mysql][:root_pass]
  action [:create, :start]
end

mysql_database_user node[:mysql][:username] do
  connection(
    host: node[:mysql][:host],
    username: 'root',
    password: node[:mysql][:root_pass],
  )
  password node[:mysql][:password]
  host '%'
  action [:create, :grant]
end
