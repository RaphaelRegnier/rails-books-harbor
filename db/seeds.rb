Book.destroy_all
Order.destroy_all
User.destroy_all

i = 0
urls = %w(https://images.pexels.com/photos/256232/pexels-photo-256232.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/159597/book-read-literature-pages-159597.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/24864/pexels-photo-24864.jpg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/208204/pexels-photo-208204.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/311399/pexels-photo-311399.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/247787/pexels-photo-247787.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/320265/pexels-photo-320265.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/246521/pexels-photo-246521.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/128988/pexels-photo-128988.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/33283/stack-of-books-vintage-books-book-books.jpg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/51173/pexels-photo-51173.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/36428/book-read-relax-lilac.jpg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/33085/knowledge-book-library-glasses.jpg?w=1260&h=750&auto=compress&cs=tinysrgb)


10.times do
user1 = User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name,email: Faker::Internet.email, password: Faker::Internet.password)
book1 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 30), category: Faker::Book.genre, author: Faker::Book.author, description: Faker::Lorem.sentence(50, true) ,user: user1, photo_url: urls[i])
i += 1
book2 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 30), category: Faker::Book.genre, author: Faker::Book.author, description: Faker::Lorem.sentence(50, true) ,user: user1, photo_url: urls[i])
i += 1
book3 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 30), category: Faker::Book.genre, author: Faker::Book.author, description: Faker::Lorem.sentence(50, true) ,user: user1, photo_url: urls[i])
i += 1

if i == 12
  i = 0
end

order1 = Order.create(start_time: Faker::Date.between(Date.today, 1.week.from_now) ,end_time: Faker::Date.between(1.week.from_now, 2.week.from_now), book: book1, user: user1)
order4 = Order.create(start_time: Faker::Date.between(2.week.from_now, 5.week.from_now) ,end_time: Faker::Date.between(5.week.from_now, 10.week.from_now), book: book1, user: user1)
order5 = Order.create(start_time: Faker::Date.between(10.week.from_now, 1.year.from_now) ,end_time: Faker::Date.between(1.year.from_now, 2.year.from_now), book: book1, user: user1)

order2 = Order.create(start_time: Faker::Date.between(Date.today, 1.year.from_now) ,end_time: Faker::Date.between(1.year.from_now, 2.year.from_now), book: book2, user: user1)
order3 = Order.create(start_time: Faker::Date.between(Date.today, 1.year.from_now) ,end_time: Faker::Date.between(1.year.from_now, 2.year.from_now), book: book3, user: user1)
end

# TEST ACCOUNT
admin = User.create(first_name: 'Pika', last_name: 'Chu',email: 'pikachu@pokemail.net', password: 'pikapika')

