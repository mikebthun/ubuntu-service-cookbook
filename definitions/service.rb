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



end


