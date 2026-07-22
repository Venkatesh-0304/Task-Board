# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
board = Board.create!(name: "Sprint 12")

todo   = board.columns.create!(name: "To Do", position: 1)
doing  = board.columns.create!(name: "Doing", position: 2)
done   = board.columns.create!(name: "Done", position: 3)

todo.cards.create!(title: "Design login screen", body: "Figma mockup", position: 1)
todo.cards.create!(title: "Write API docs", body: "", position: 2)
doing.cards.create!(title: "Build auth flow", body: "Devise + OAuth", position: 1)
done.cards.create!(title: "Set up CI", body: "GitHub Actions", position: 1)
