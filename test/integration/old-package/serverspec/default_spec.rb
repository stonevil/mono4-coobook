require 'spec_helper'

describe 'mono4::default' do
  describe package('mono-complete') do
    it { is_expected.to be_installed.with_version('3.8.0') }
  end
end
