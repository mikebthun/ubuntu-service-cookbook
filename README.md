# ubuntu-service-cookbook-cookbook


## Usage

include_recipe "ubuntu-service-cookbook"

ubuntu_service 'your_service_name' do
  executable "/full/path/to/your/executable"
  cwd "/working/directory"
  description "Your service description"
end


## Supported Platforms

Ubuntu 14.04
