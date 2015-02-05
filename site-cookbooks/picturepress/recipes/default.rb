package "libsqlite3-dev"
package "redis-server"
package "nodejs"
package "imagemagick"

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

include_recipe "nginx::default"
include_recipe "nginx::passenger"

include_recipe "postfix::default"

include_recipe "postgresql::client"
include_recipe "postgresql::server"

include_recipe "sudo::default"

user "depolyer" do
  supports :manage_home => true
  comment "Depolyer"
  uid 9999
  gid "users"
  home "/home/depolyer"
  shell "/bin/bash"
  password "$1$xfrwAnN3$9mtcSwB6qqXAK8WvbVE971"
end

rbenv_ruby "2.1.5" do
  global true
end

rbenv_gem "bundler" do
  ruby_version "2.1.5"
end
