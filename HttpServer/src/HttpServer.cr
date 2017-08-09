require "./HttpServer/*"
require "kemal"

module HttpServer
  get "/" do
    "Hello World!! This is a Kemal test!"
  end

  Kemal.run
end
