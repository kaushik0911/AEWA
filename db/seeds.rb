require 'open-uri'

AdminUser.create!(email: 'admin@example.com', password: 'pa$$w0rd', password_confirmation: 'pa$$w0rd')

ProjectStatus.create([{name: 'Pending'}, {name: 'Negotiating'}, {name: 'Accepted'}, {name: 'Ongoing'}, {name: 'Hold'}, {name: 'Completed'}, {name: 'Canceled'}])

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

for i in 0...9
  service = Service.create({
    title: "Lorem Ipsum",
    description: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
    display: true
  })

  downloaded_image = open("https://picsum.photos/450/200")
  service.image.attach(io: downloaded_image, filename: "image.jpg")
end

for i in 0...10
  project = Project.create({
    title: "(#{i}) Lorem Ipsum",
    description: "(#{i}) There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
    display: true,
    project_status: ProjectStatus.completed,
    start_date: Date.today,
    end_date: (Date.today + 30.day),
    street: "(#{i}) 4921 Frank Avenue",
    city: "Bridgeville",
    zipcode: "PA 15017",
    lat: rand(7.1...7.2).round(6),
    lng: rand(79.9...80.1).round(6)
  })
end

for i in 0...10
  project = Project.create({
    title: "(#{i}) Lorem Ipsum",
    description: "(#{i}) There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
    display: true,
    project_status: ProjectStatus.ongoing,
    start_date: Date.today,
    end_date: (Date.today + 30.day),
    street: "(#{i}) 4921 Frank Avenue",
    city: "Bridgeville",
    zipcode: "PA 15017",
    lat: rand(7.1...7.2).round(6),
    lng: rand(79.9...80.1).round(6)
  })
end
