namespace :discord_bot do
  desc "Start Discord Bot"
  task start_discord_bot: :environment do
    require'discordrb'

    Bot = Discordrb::Commands::CommandBot.new(
      token: ENV['DISCORD_BOT_TOKEN'],
      client_id: ENV['DISCORD_CLIENT_ID'],
      prefix: "!"
    )

    Dir["#{Rails.root}/app/commands/*.rb"].each { |file| require file }
    Bot.run

      # Print out bot join channel link
    puts "Invite URL: #{Bot.invite_url}"
  end
end
