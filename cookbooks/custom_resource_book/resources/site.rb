# To learn more about Custom Resources, see https://docs.chef.io/custom_resources/

property :homepage, String, default: '<p> This isa custom rpage</p>'

action :create do
	package 'httpd'
  service 'httpd' do
    action [:start, :enable]
  end

  file '/home/index.html' do
    content new_resource.homepage
  end
end
  
  action :delete do
  package 'httpd' do
    action :remove
  end
end