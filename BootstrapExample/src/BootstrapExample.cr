require "./BootstrapExample/*"
require "kemal"

module BootstrapExample
  get "/" do
    render "src/views/index.ecr", "src/views/layouts/layout.ecr"
  end
  
  # Kemal.run
end

