Fabricator(:game) do
  name { Faker::Lorem.word }
  client_id { Faker::Internet.password(min_length: 8) }
  client_secret { Faker::Internet.password(min_length: 16) }
  aliases { Faker::Lorem.words }
  after_build do |game|
    game.bot_name = game.name + 'bot'
  end
end
