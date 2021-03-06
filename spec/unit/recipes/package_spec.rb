require 'spec_helper'

describe 'elixir::package' do
  describe 'Debian Platform Family' do
    let(:chef_run_debian) do
      ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04') do |node|
        node.set['elixir']['package']['version'] = '1.2.5'
      end
    end

    let(:debian_converged) { chef_run_debian.converge('elixir::package') }

    it 'converges successfully' do
      expect { :debian_converged }.to_not raise_error
    end

    it 'installs the elixir package' do
      expect(debian_converged).to install_package('elixir').with(version: '1.2.5')
    end
  end
end
