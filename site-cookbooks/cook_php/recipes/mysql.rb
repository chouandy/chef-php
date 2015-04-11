# 安裝 MySQL
mysql_service 'default' do
  version node[:mysql][:version]
  socket node[:mysql][:socket]
  initial_root_password node[:mysql][:root_pass]
  action [:create, :start]
end
