Book.destroy_all
Order.destroy_all
User.destroy_all

i = 0
urls = %w(https://images.pexels.com/photos/256232/pexels-photo-256232.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/159597/book-read-literature-pages-159597.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/24864/pexels-photo-24864.jpg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/208204/pexels-photo-208204.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/311399/pexels-photo-311399.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/247787/pexels-photo-247787.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/320265/pexels-photo-320265.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/246521/pexels-photo-246521.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/128988/pexels-photo-128988.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/33283/stack-of-books-vintage-books-book-books.jpg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/51173/pexels-photo-51173.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/36428/book-read-relax-lilac.jpg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/33085/knowledge-book-library-glasses.jpg?w=1260&h=750&auto=compress&cs=tinysrgb)
addresses = ["Manchester, canada", "laval, canada", "Albany, canada", "Mont-Tremblant, canada", "Alcove, canada", "Quebec city, canada", "Montreal east, canada", "Blainville, canada", "Sherbrooke, canada", "Burnstown, canada"]

10.times do
user = User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name,email: Faker::Internet.email, password: Faker::Internet.password, pickup_address: addresses[i])
user.save

# user2 = User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name,email: Faker::Internet.email, password: Faker::Internet.password, pickup_address: addresses[i])

# user3 = User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name,email: Faker::Internet.email, password: Faker::Internet.password, pickup_address: addresses[i])

# user4 = User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name,email: Faker::Internet.email, password: Faker::Internet.password, pickup_address: addresses[i])

# user5 = User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name,email: Faker::Internet.email, password: Faker::Internet.password, pickup_address: addresses[i])

# user6 = User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name,email: Faker::Internet.email, password: Faker::Internet.password, pickup_address: addresses[i])

# user7 = User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name,email: Faker::Internet.email, password: Faker::Internet.password, pickup_address: addresses[i])

# user8 = User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name,email: Faker::Internet.email, password: Faker::Internet.password, pickup_address: addresses[i])

# user9 = User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name,email: Faker::Internet.email, password: Faker::Internet.password, pickup_address: addresses[i])

# user10 = User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name,email: Faker::Internet.email, password: Faker::Internet.password, pickup_address: addresses[i])


book = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 10), category: Faker::Book.genre, author: Faker::Book.author, description: Faker::Lorem.sentence(50, true) ,user: user, photo_url: urls[i])
book.save

# book2 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 30), category: Faker::Book.genre, author: Faker::Book.author, description: Faker::Lorem.sentence(50, true) ,user: user2, photo_url: urls[i])
# i += 1
# book3 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 30), category: Faker::Book.genre, author: Faker::Book.author, description: Faker::Lorem.sentence(50, true) ,user: user3, photo_url: urls[i])
# i += 1
# book4 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 30), category: Faker::Book.genre, author: Faker::Book.author, description: Faker::Lorem.sentence(50, true) ,user: user4, photo_url: urls[i])
# i += 1
# book5 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 30), category: Faker::Book.genre, author: Faker::Book.author, description: Faker::Lorem.sentence(50, true) ,user: user5, photo_url: urls[i])
# i += 1
# book6 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 30), category: Faker::Book.genre, author: Faker::Book.author, description: Faker::Lorem.sentence(50, true) ,user: user6, photo_url: urls[i])
# i += 1
# book7 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 30), category: Faker::Book.genre, author: Faker::Book.author, description: Faker::Lorem.sentence(50, true) ,user: user7, photo_url: urls[i])
# i += 1
# book8 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 30), category: Faker::Book.genre, author: Faker::Book.author, description: Faker::Lorem.sentence(50, true) ,user: user8, photo_url: urls[i])
# i += 1
# book9 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 30), category: Faker::Book.genre, author: Faker::Book.author, description: Faker::Lorem.sentence(50, true) ,user: user9, photo_url: urls[i])
# i += 1
# book10 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 30), category: Faker::Book.genre, author: Faker::Book.author, description: Faker::Lorem.sentence(50, true) ,user: user10, photo_url: urls[i])
# i += 1


order = Order.create(start_time: Faker::Date.between(Date.today, 1.week.from_now) ,end_time: Faker::Date.between(1.week.from_now, 2.week.from_now), book: book, user: user)
order.save
i+=1
# order4 = Order.create(start_time: Faker::Date.between(2.week.from_now, 5.week.from_now) ,end_time: Faker::Date.between(5.week.from_now, 10.week.from_now), book: book1, user: user1)
# order5 = Order.create(start_time: Faker::Date.between(10.week.from_now, 1.year.from_now) ,end_time: Faker::Date.between(1.year.from_now, 2.year.from_now), book: book1, user: user1)

# order2 = Order.create(start_time: Faker::Date.between(Date.today, 1.year.from_now) ,end_time: Faker::Date.between(1.year.from_now, 2.year.from_now), book: book1, user: user1)
# order3 = Order.create(start_time: Faker::Date.between(Date.today, 1.year.from_now) ,end_time: Faker::Date.between(1.year.from_now, 2.year.from_now), book: book1, user: user1)
# order6 = Order.create(start_time: Faker::Date.between(Date.today, 1.year.from_now) ,end_time: Faker::Date.between(1.year.from_now, 2.year.from_now), book: book1, user: user1)
# order7 = Order.create(start_time: Faker::Date.between(Date.today, 1.year.from_now) ,end_time: Faker::Date.between(1.year.from_now, 2.year.from_now), book: book1, user: user1)
# order8 = Order.create(start_time: Faker::Date.between(Date.today, 1.year.from_now) ,end_time: Faker::Date.between(1.year.from_now, 2.year.from_now), book: book1, user: user1)
# order9 = Order.create(start_time: Faker::Date.between(Date.today, 1.year.from_now) ,end_time: Faker::Date.between(1.year.from_now, 2.year.from_now), book: book1, user: user1)
# order10 = Order.create(start_time: Faker::Date.between(Date.today, 1.year.from_now) ,end_time: Faker::Date.between(1.year.from_now, 2.year.from_now), book: book1, user: user1)
end

# TEST ACCOUNT
admin = User.create(first_name: 'Pika', last_name: 'Chu',email: 'pikachu@pokemail.net', password: 'pikapika', pickup_address: 'Downtown, Montreal')

