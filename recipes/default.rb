#
# Cookbook Name:: ubuntu-service-cookbook
# Recipe:: default
#
# Copyright (C) 2015 Mike Berman 
#
# All rights reserved - Do Not Redistribute
#

ubuntu_service 'your_service_name' do
  executable "/full/path/to/your/executable"
  cwd "/working/directory"
  description "Your service description"
end


