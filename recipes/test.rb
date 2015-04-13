#
# Cookbook Name:: ubuntu-service
# Recipe:: default
#
# Copyright (C) 2015 Mike Berman 
#
# All rights reserved - Do Not Redistribute
#


ubuntu_service 'yourservice' do
  executable "/bin/ls"
  cwd "/"
  description "Your service description"
  arguments "-lah"
  environment_variables ({
    'blahKey' => 'blahValue'
  })
end
