require "./CallingTwitterApi/*"
require "http/client"
require "oauth"
require "uri"

token = ENV["TWITTER_ACCESS_TOKEN"]
secret = ENV["TWITTER_TOKEN_SECRET"]
consumer_key = ENV["TWITTER_KEY"]
consumer_secret = ENV["TWITTER_SECRET"]

client = HTTP::Client.new("api.twitter.com", tls: true)
OAuth.authenticate(client, token, secret, consumer_key, consumer_secret)

response = client.get("/1.1/users/search.json?q=foo")
puts response.status_code
puts response.body

response = client.post_form("/1.1/statuses/update.json", { status: "日本語ツイートのテスト" })
puts response.body
