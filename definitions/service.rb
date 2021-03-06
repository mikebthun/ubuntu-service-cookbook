define :ubuntu_service, 
  :executable => nil, 
  :cwd => nil, 
  :description => nil, 
  :environment_variables => {},
  :arguments => nil do

  params[:servicename] ||= params[:name]

  template "/etc/init.d/#{params[:servicename]}" do

   source 'service.erb'
   mode 0700
   cookbook "ubuntu-service"
   variables(
    :servicename => params[:servicename],
    :executable => params[:executable],
    :cwd => params[:cwd ],
    :description => params[:description],
    :arguments => params[:arguments],
    :environment_variables => params[:environment_variables]
   )

 
  end

  # add the service
  execute "Install %s service" % params[:servicename] do
    command "update-rc.d %s defaults 98 02 " % params[:servicename]
    action :run
    notifies :start, "service[%s]" % params[:servicename], :immediately 
  end
 
  # start the service on notification
  service "%s" % params[:servicename] do
    supports :start => true, :stop => true, :restart => true
  end

end


