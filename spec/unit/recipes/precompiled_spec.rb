require 'spec_helper'

describe 'elixir::esl' do
  describe 'Debian Platform Family' do
    let(:chef_run_debian) do
      ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '14.04') do |node|
        node.set['elixir']['esl']['version'] = '1.2.5'
      end
    end

    let(:debian_converged) { chef_run_debian.converge('elixir::precompiled') }

    it 'converges successfully' do
      expect { :debian_converged }.to_not raise_error
    end

    it 'installs erlang from esl package' do
      expect(debian_converged).to install_package('esl-erlang')
    end

    it 'creates directory /opt/elixir/1.2.5' do
      expect(debian_converged).to create_directory('/opt/elixir/1.2.5')
    end

    it 'creates symbol link /usr/local/lib/elixir' do
      expect(debian_converged).to create_link('/usr/local/lib/elixir')
    end
  end
end
