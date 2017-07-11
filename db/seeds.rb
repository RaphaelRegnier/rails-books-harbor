Book.destroy_all
Order.destroy_all
User.destroy_all



10.times do

user1 = User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name,email: Faker::Internet.email, password: Faker::Internet.password)
book1 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 30), category: Faker::Book.genre, author: Faker::Book.author, user: user1)
book2 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 30), category: Faker::Book.genre, author: Faker::Book.author, user: user1)
book3 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 30), category: Faker::Book.genre, author: Faker::Book.author, user: user1)


order1 = Order.create(start_time: Faker::Date.between(Date.today, 1.week.from_now) ,end_time: Faker::Date.between(1.week.from_now, 2.week.from_now), book: book1, user: user1)
order4 = Order.create(start_time: Faker::Date.between(2.week.from_now, 5.week.from_now) ,end_time: Faker::Date.between(5.week.from_now, 10.week.from_now), book: book1, user: user1)
order5 = Order.create(start_time: Faker::Date.between(10.week.from_now, 1.year.from_now) ,end_time: Faker::Date.between(1.year.from_now, 2.year.from_now), book: book1, user: user1)

order2 = Order.create(start_time: Faker::Date.between(Date.today, 1.year.from_now) ,end_time: Faker::Date.between(1.year.from_now, 2.year.from_now), book: book2, user: user1)
order3 = Order.create(start_time: Faker::Date.between(Date.today, 1.year.from_now) ,end_time: Faker::Date.between(1.year.from_now, 2.year.from_now), book: book3, user: user1)
end

# TEST ACCOUNT
admin = User.create(first_name: 'Pika', last_name: 'Chu',email: 'pikachu@pokemail.net', password: 'pikapika')
