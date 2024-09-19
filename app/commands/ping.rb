module Ping
  Bot.message(content: 'Ping!') do |event|
    event.respond 'Pong!'
  end

  Bot.command(:ping) do |event|
    event.respond 'Pong!'
  end
end
