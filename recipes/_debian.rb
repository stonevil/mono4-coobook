apt_repository 'mono-xamarin' do
  uri node['mono4']['apt_repository']
  keyserver node['mono4']['apt_keyserver']
  key node['mono4']['apt_repository_key']
#  distribution node['lsb']['codename']
  distribution 'wheezy'
  components ['main']
  action :add
end
