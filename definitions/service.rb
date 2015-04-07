define :ubuntu_service, :executable => nil, :cwd => nil, :description => nil do

  params[:servicename] ||= params[:name]

  template "/etc/init.d/#{params[:servicename]}" do

   source 'service.erb'

   variables(
    :servicename => params[:servicename],
    :executable => params[:executable],
    :cwd => params[:cwd ],
    :description => params[:description]
   )

 
  end

  # add the service
  execute "Install %s service" % params[:servicename] do
    command "update-rc.d %s defaults 98 02 " % params[:servicename]
    action :run
  end

  # start the service
  service params[:servicename] do
    action :start
  end

end


