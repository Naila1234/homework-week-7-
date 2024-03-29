#
# Cookbook:: mongodb
# Spec:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'mongodb::default' do
  context 'When all attributes are default, on Ubuntu 18.04' do
    # for a complete list of available platforms and versions see:
    # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
    platform 'ubuntu', '18.04'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

  it 'runs apt get update' do
    expect(chef_run).to update_apt_update 'update_sources'
  end

  it 'runs apt get update' do
    expect(chef_run).to add_apt_repository 'monogodb-org'
  end
  # context 'When all attributes are default, on CentOS 7' do
  #   # for a complete list of available platforms and versions see:
  #   # https://github.com/chefspec/fauxhai/blob/master/PLATFORMS.md
  #   platform 'centos', '7'

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
