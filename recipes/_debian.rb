apt_repository 'mono' do
  uri node['mono4']['apt_repository']
  keyserver node['mono4']['apt_keyserver']
  key node['mono4']['apt_repository_key']
  components ['main', 'stable']
  action :add
end
