20.times { User.create!(username: Faker::Internet.user_name, password: "password") }

50.times { Article.create!(author_id: rand(1..20), title: Faker::Name.title, body: Faker::Hipster.paragraph, url: Faker::Internet.url) }

200.times { Comment.create!(article_id: rand(1..50), commenter_id: rand(1..20), comment: Faker::Hipster.sentence) }
