#!/usr/bin/env rspec
#
# Unit testing for the macauthorization provider
#

require 'spec_helper'

describe 'macauthorization provider' do
  subject { Puppet::Type.type(:macauthorization).provider(:macauthorization).new(resource) }
  let(:resource) { mock('resource') }

  it 'should have a create method' do
    subject.should respond_to(:create)
  end
end
