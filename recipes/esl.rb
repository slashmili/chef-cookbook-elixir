include_recipe 'erlang::esl'

package 'elixir' do
  version node['elixir']['esl']['version'] if node['elixir']['esl']['version']
end
