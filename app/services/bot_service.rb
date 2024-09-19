class DiscordDefenseService

  ChannelID = 1286337625019387985

  def initialize(defense, url)
    @defense = defense
    @url = url
  end

  def caller
    message = "A new defense has been added.\nTown Hall: #{@defense.townhall}\nYou can view it here: #{@url}"
    Bot.send_message(ChannelID, message)
  end
end
