include_recipe "mono4::_#{node['platform_family']}"

if platform_family?('rhel', 'fedora')
  include_recipe 'yum'
  include_recipe 'yum-epel'
elsif platform_family?('debian')
  include_recipe 'apt'
else
  raise "Platform #{node['platform']} not supported"
end

if node['mono4']['install_method'] == 'source'
  include_recipe 'mono4::_source'
elsif node['mono4']['install_method'] == 'package'
  package node['mono4']['package_name'] do
    version node['mono4']['package_version']
    action :install
  end
else
  raise "Installation method #{node['mono4']['install_method']} not supported"
end
