require 'puppet/provider/nameservice/directoryservice'

Puppet::Type.type(:group).provide :directoryservice, :parent => Puppet::Provider::NameService::DirectoryService do
  desc "Group management using DirectoryService on OS X.

  "

  commands :dscl => "/usr/bin/dscl"
  confine :operatingsystem => :gentoo
  defaultfor :operatingsystem => :gentoo
  has_feature :manages_members
end
