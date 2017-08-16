require "./CallingTwitterApi/*"
require "http/client"
require "oauth"

module CallingTwitterApi
  token = ENV["TWITTER_ACCESS_TOKEN"]
  secret = ENV["TWITTER_TOKEN_SECRET"]
  consumer_key = ENV["TWITTER_KEY"]
  consumer_secret = ENV["TWITTER_SECRET"]

  client = HTTP::Client.new("api.twitter.com", tls: true)
  OAuth.authenticate(client, token, secret, consumer_key, consumer_secret)

  response = client.get("/search")
  puts response.status_code
end
