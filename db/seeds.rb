require 'open-uri'

# AdminUser.create!(email: 'admin@example.com', password: 'pa$$w0rd', password_confirmation: 'pa$$w0rd')
# ProjectStatus.create([{name: 'Pending'}, {name: 'Negotiating'}, {name: 'Accepted'}, {name: 'Inprogress'}, {name: 'Hold'}, {name: 'Completed'}, {name: 'Canceled'}])

for i in 0...5
  carousel = Carousel.create({
    title: "Where can I get some?",
    description: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
    url: "https://www.lipsum.com/",
    display: true
  })

  downloaded_image = open("https://picsum.photos/1500/800")
  carousel.image.attach(io: downloaded_image, filename: "image.jpg")
end
