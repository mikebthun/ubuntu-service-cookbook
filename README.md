# ubuntu-service-cookbook-cookbook

Chef upstart service recipe for Ubuntu. 

Need an executable run as a service? This recipe is for you.

## Usage

```
include_recipe "ubuntu-service"

ubuntu_service 'yourservice' do
  executable "/bin/ls"
  cwd "/"
  description "Your service description"
  arguments "-lah"
  environment_variables ({
    'blahKey' => 'blahValue'
  })
end


```

## Supported Platforms

Ubuntu 14.04
