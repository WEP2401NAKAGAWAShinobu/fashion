User.create!(name: "nakagawa shinobu", email: "saku321@exe.com", password: "skiu3254", password_confirmation: "skiu3254")
User.create!(name: "nakagawa sakuya", email: "yeli@exe.com", password: "poiu3247", password_confirmation: "poiu3247")
User.create!(name: "tanaka emiko ", email: "lop32@gmail.com", password: "huik6971", password_confirmation: "huik6971")
User.create!(name: "ooyabu chiaki", email: "yuuki21@gmail.com", password: "lvnc5819", password_confirmation:  "lvnc5819")
User.create!(name: "takakura kyouya", email: "saku321@gmail.com", password: "lpwq2744", password_confirmation: "lpwq2744")

Cloth.create!(name: "リボンブラウス", category: 0, user_id: 1, description: "リボン")
Cloth.create!(name: "カーディガン", category: 0, user_id: 1, description: "ピンク色")
Cloth.create!(name: "水玉ブラウス", category: 0, user_id: 1, description: "かわいい")
Cloth.create!(name: "フリフリのスカート", category: 1, user_id: 1, description: "お洒落")
Cloth.create!(name: "パンプス", category: 2, user_id: 1, description: "水色")

Coordinate.create!(memo: "普段着", user_id: 1)
Coordinate.create!(memo: "お洒落", user_id: 1)
Coordinate.create!(memo: "お出かけコーデ", user_id: 1)
Coordinate.create!(memo: "お気に入りコーデ", user_id: 1)
Coordinate.create!(memo: "夏コーデ", user_id: 1)

ClothCoordinate.create!(cloth_id: 1, coordinate_id: 1)
ClothCoordinate.create!(cloth_id: 2, coordinate_id: 2)
ClothCoordinate.create!(cloth_id: 3, coordinate_id: 3)
ClothCoordinate.create!(cloth_id: 4, coordinate_id: 4)
ClothCoordinate.create!(cloth_id: 5, coordinate_id: 5)



