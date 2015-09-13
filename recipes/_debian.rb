apt_repository 'libtiff' do
  uri node['mono4']['apt_repository']
  keyserver node['mono4']['apt_keyserver']
  key node['mono4']['apt_repository_key']
  distribution 'wheezy-libtiff-compat'
  components ['main']
  action :add
  only_if { node['platform_version'] == '12.04' }
end

apt_repository 'mono-xamarin' do
  uri node['mono4']['apt_repository']
  keyserver node['mono4']['apt_keyserver']
  key node['mono4']['apt_repository_key']
  distribution node['mono4']['apt_distribution']
  components ['main']
  action :add
end
