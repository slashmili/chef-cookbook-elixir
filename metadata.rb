name             'elixir'
maintainer       'Milad Rastian'
maintainer_email 'eslashmili@gmail.com'
license          'Apache 2.0'
description      'Installs elixir'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'erlang', '~> 3.0'
depends "apt", "~> 2.7"
depends "git"
depends "github"
depends "libarchive"

%w(debian ubuntu).each do |os|
  supports os
end

source_url 'https://github.com/pulpon/chef-cookbook-elixir' if respond_to?(:source_url)
issues_url 'https://github.com/pulpon/chef-cookbook-elixirt' if respond_to?(:issues_url)
