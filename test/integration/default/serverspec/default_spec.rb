require 'spec_helper'

describe 'chef-ingredient::default' do
  describe package('chef-server-core') do
    it { should be_installed }
  end

  describe command('sudo chef-server-ctl test') do
    its(:exit_status) { should eq 0 }
  end

  describe package('chef-manage') do
    it { should be_installed }
  end

  describe command('sudo chef-manage-ctl test') do
    its(:exit_status) { should eq 0 }
  end
end
