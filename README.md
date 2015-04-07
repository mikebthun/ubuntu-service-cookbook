# ubuntu-service-cookbook-cookbook

Chef upstart service recipe for Ubuntu. 

Need an executable run as a service? This recipe is for you.

## Usage

```
include_recipe "ubuntu-service"

ubuntu_service 'your_service_name' do
  executable "/full/path/to/your/executable"
  cwd "/working/directory"
  description "Your service description"
end
```

## Supported Platforms

Ubuntu 14.04
