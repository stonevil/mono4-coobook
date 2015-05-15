name "mono4"
maintainer 'Myroslav Rys'
maintainer_email 'stonevil@gmail.com'
license 'Apache 2.0'
description 'Installs and configures Mono Framework v4'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.4'

depends 'git'
depends 'build-essential'

depends 'yum'
depends 'yum-epel'
depends 'apt'

supports "ubuntu", "= 12.04"
supports "ubuntu", "= 12.10"
supports "ubuntu", "= 14.04"
supports "ubuntu", "= 14.10"
supports "ubuntu", "= 15.04"
supports "debian", "= 7.8"
supports "centos", "= 7.0"
supports "redhat"
supports "fedora"
supports "amazon"
supports "scientific"
