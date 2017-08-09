require "./KemalTest/*"
require "kemal"

module KemalTest
  get "/:name" do |env|
    name = env.params.url["name"]
    render "src/views/hello.ecr", "src/views/layouts/layout.ecr"
  end

  Kemal.run
end
