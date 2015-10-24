require 'spec_helper'
describe 'oracle_java' do

  context 'with defaults for all parameters' do
    it { should contain_class('oracle_java') }
  end
end
