# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
# AdminUser.create!(email: 'admin@example.com', password: 'pa$$w0rd', password_confirmation: 'pa$$w0rd')
ContractStatus.create([{name: 'Pending'}, {name: 'Negotiating'}, {name: 'Accepted'}, {name: 'Inprogress'}, {name: 'Hold'}, {name: 'Completed'}, {name: 'Canceled'}])
