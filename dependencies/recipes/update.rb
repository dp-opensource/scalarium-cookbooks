#
# Cookbook Name:: dependencies
# Recipe:: update
#

include_recipe "packages"
include_recipe "gem_support"

if node[:dependencies][:update_debs] == 'true'
  execute "apt-get update" do
    command "apt-get update"
    action :run
  end
end

if node[:dependencies][:upgrade_debs] == 'true'
  execute "apt-get upgrade" do
    command "apt-get upgrade -y"
    action :run
  end
end

if node[:dependencies][:upgrade_gems] == 'true'
  execute "gem update" do
    command "gem update"
    action :run
  end
end
