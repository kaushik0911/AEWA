require 'open-uri'

# AdminUser.create!(email: 'admin@example.com', password: 'pa$$w0rd', password_confirmation: 'pa$$w0rd')
# ProjectStatus.create([{name: 'Pending'}, {name: 'Negotiating'}, {name: 'Accepted'}, {name: 'Inprogress'}, {name: 'Hold'}, {name: 'Completed'}, {name: 'Canceled'}])

# for i in 0...5
#   carousel = Carousel.create({
#     title: "Where can I get some?",
#     description: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
#     url: "https://www.lipsum.com/",
#     display: true
#   })

#   downloaded_image = open("https://picsum.photos/1500/800")
#   carousel.image.attach(io: downloaded_image, filename: "image.jpg")
# end

for i in 0...4
  team_member = TeamMember.create({
    nickname: "Lorem",
    full_name: "Lorem Ipsum",
    job_role: (i / 2).to_i,
    description: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
    primary_contact_number: "703-987-3957",
    secondary_contact_number: "703-987-3957",
    email: "michale1989@hotmail.com",
    display: true
  })

  downloaded_image = open("https://picsum.photos/340/250")
  team_member.image.attach(io: downloaded_image, filename: "image.jpg")
end
