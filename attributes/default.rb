default['apt']['compile_time_update'] = true

default['yum-epel']['repositories'] = %w{epel epel-testing}

default['mono4']['install_method'] = 'package'

default['mono4']['source']['git_uri'] = 'git://github.com/mono/mono.git'
default['mono4']['source']['git_branch'] = 'mono-4.0.0-branch'

case node['platform_family']
when 'rhel', 'fedora'
  default['mono4']['yum_repository'] = 'http://download.mono-project.com/repo/centos/'
  default['mono4']['yum_repository_key'] = 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF'
  default['mono4']['package_name'] = 'mono-complete'
  default['mono4']['package_version'] = '4.0.1-4'

  default['mono4']['source']['dependencies'] = %w[
    libgdiplus
    zlib-devel
    autoconf
    automake
    libtool
    gettext
  ]
when 'debian'
  default['mono4']['apt_repository'] = 'http://download.mono-project.com/repo/debian'
  default['mono4']['apt_keyserver'] = 'keyserver.ubuntu.com'
  default['mono4']['apt_repository_key'] = '3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF'
  default['mono4']['package_name'] = 'mono-complete'
  default['mono4']['package_version'] = '4.0.1-0xamarin5'

  default['mono4']['source']['dependencies'] = %w[
    libgdiplus
    zlib1g-dev
    autoconf
    automake
    libtool
    gettext
  ]
end
