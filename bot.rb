require 'discordrb'

bot = Discordrb::Bot.new token: 'MTE4NDI2NzU2ODE5NDc4MTIxNA.GhPuv3.PTwU1OStxdUogPymXsMM4XdKvpHINKKa9kJsFE', client_id:
1184267568194781214

bot.message(with_text: 'Ping!') do |event|
      event.respond 'Pong!'
end

bot.run