include_recipe 'erlang::package'

package 'elixir' do
  version node['elixir']['version']
end
