AdminUser.create!(email: 'admin@example.com', password: 'pa$$w0rd', password_confirmation: 'pa$$w0rd')
ProjectStatus.create([{name: 'Pending'}, {name: 'Negotiating'}, {name: 'Accepted'}, {name: 'Inprogress'}, {name: 'Hold'}, {name: 'Completed'}, {name: 'Canceled'}])
