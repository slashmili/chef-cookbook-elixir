include_recipe 'erlang::package'

package 'elixir' do
  version node['elixir']['package']['version'] if node['elixir']['package']['version']
end
