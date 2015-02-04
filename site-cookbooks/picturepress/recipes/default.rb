package "redis-server"
package "nodejs"
package "imagemagick"

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby "2.1.5"

rbenv_gem "bundler" do
  ruby_version "2.1.5"
end
