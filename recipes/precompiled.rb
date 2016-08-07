include_recipe 'apt::default'
include_recipe 'erlang::esl'
include_recipe 'libarchive'

elixir_path = File.join(node['elixir']['precompiled']['_versions_path'], node['elixir']['precompiled']['version'])

asset = github_asset 'Precompiled.zip' do
  repo 'elixir-lang/elixir'
  release "v#{node['elixir']['precompiled']['version']}"
end

directory elixir_path do
  recursive true
end

libarchive_file 'Precompiled.zip' do
  path asset.asset_path
  extract_to elixir_path
end

link node['elixir']['precompiled']['install_path'] do
  to elixir_path
end
