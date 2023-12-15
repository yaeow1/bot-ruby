require 'discordrb'
require 'discordrb/webhooks'
require 'dotenv/load'

Dotenv.load

WEBHOOK_URL = "https://discord.com/api/webhooks/1184276093876834325/96VOZ2ysb_TDsEDq6kH-tTi2r-uzixmDPZP_p3Ssb-ibSUEjim0FcTM6SBhpZU5bTbYu"

bot = Discordrb::Bot.new token: ENV['TOKEN'], client_id:
ENV['CLIENT_ID']

client = Discordrb::Webhooks::Client.new(url: WEBHOOK_URL)
client.execute do |builder|
      builder.content = "Lol! I've been disconnected"
      builder.add_embed do |embed|
      embed.title = "I'm online now sir"
      embed.timestamp = Time.now
    end
end

bot.message(with_text: 'Ping!') do |event|
      event.respond 'Pong!'
end


bot.message(with_text: 'Time') do |event|
      event.respond "The time now: " 
end

bot.run