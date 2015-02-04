package "redis-server"
package "nodejs"
package "imagemagick"

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

include_recipe "nginx::default"

include_recipe "postfix::default"

include_recipe "postgresql::client"
include_recipe "postgresql::server"

rbenv_ruby "2.1.5" do
  global true
end

rbenv_gem "bundler" do
  ruby_version "2.1.5"
end
