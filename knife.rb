# See http://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "leoyang"
client_key               "#{current_dir}/leoyang.pem"
validation_client_name   "chef_red-validator"
validation_key           "#{current_dir}/chef_red-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/chef_red"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
