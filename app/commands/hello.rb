module Hello
  Bot.command(:hello) do |event|
    event.respond "Hello #{event.user.global_name}"
  end
end
