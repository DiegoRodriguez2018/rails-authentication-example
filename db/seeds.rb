# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create_table "posts", force: :cascade do |t|
#     t.string "title"
#     t.text "content"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.string "subtitle"
#     t.bigint "user_id"
#     t.index ["user_id"], name: "index_posts_on_user_id"
#   end

require 'faker'

User.delete_all
User.create(email:"user1@gmail.com", password:"123456")
User.create(email:"user2@gmail.com", password:"123456")
User.create(email:"user3@gmail.com", password:"123456")

(1..12).each do 
    Post.create([{title:"Famous Hitchhikers Guide To The Galaxy Quotes",
        content: Faker::HitchhikersGuideToTheGalaxy.quote ,
        subtitle: "Awesome Quotes",
        user:  User.find(rand(1..3))
        }])
end