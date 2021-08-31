#
# Cookbook:: cron_book
# Recipe:: configure_cron
#
# Copyright:: 2021, The Authors, All Rights Reserved.
file "/home/ad.msystechnologies.com/akhil.patkar/clone/chef_training/cookbooks/cron_book/recipes/current_time.txt" do
    action :create_if_missing
    mode "0755"
end

cron 'first_cron' do
    command "date >> /home/ad.msystechnologies.com/akhil.patkar/clone/chef_training/cookbooks/cron_book/recipes/current_time.txt"
    minute '*/15'
end