require "./BootstrapExample/*"
require "kemal"

module BootstrapExample
  # TODO Put your code here
end

get "/" do
  render "src/views/index.ecr", "src/views/layouts/layout.ecr"
end

Kemal.run
