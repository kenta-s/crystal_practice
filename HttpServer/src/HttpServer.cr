require "./HttpServer/*"
require "http/server"

module HttpServer
  server = HTTP::Server.new(8888) do |context|
    context.response.content_type = "text/plain"
    context.response.print "Hello World! This is a test server!"
  end

  puts "Listening on 8888"

  server.listen
end
