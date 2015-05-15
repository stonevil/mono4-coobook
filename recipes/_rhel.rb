yum_repository 'mono' do
  description 'Mono repository'
  baseurl node['mono4']['yum_repository']
  gpgkey node['mono4']['yum_repository_key']
end
