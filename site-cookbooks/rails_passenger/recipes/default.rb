package "libsqlite3-dev"
package "redis-server"
package "nodejs"
package "imagemagick"

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

user "deployer" do
  supports :manage_home => true
  comment "Deployer"
  uid 9999
  gid "users"
  home "/home/deployer"
  shell "/bin/bash"
  password "$1$xfrwAnN3$9mtcSwB6qqXAK8WvbVE971"
end

rbenv_ruby "2.1.5" do
  global true
end

rbenv_gem "bundler" do
  ruby_version "2.1.5"
end

rbenv_gem "passenger" do
  ruby_version "2.1.5"
end

# include_recipe "nginx::source"
# include_recipe "nginx::passenger"

# include_recipe "postfix::default"

# include_recipe "postgresql::client"
# include_recipe "postgresql::server"

# include_recipe "sudo::default"
