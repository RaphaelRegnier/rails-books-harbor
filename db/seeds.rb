Book.destroy_all
Order.destroy_all
User.destroy_all

i = 0
urls = %w(https://images.pexels.com/photos/256232/pexels-photo-256232.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/159597/book-read-literature-pages-159597.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/24864/pexels-photo-24864.jpg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/208204/pexels-photo-208204.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/311399/pexels-photo-311399.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/247787/pexels-photo-247787.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/320265/pexels-photo-320265.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/246521/pexels-photo-246521.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/128988/pexels-photo-128988.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/33283/stack-of-books-vintage-books-book-books.jpg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/51173/pexels-photo-51173.jpeg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/36428/book-read-relax-lilac.jpg?w=1260&h=750&auto=compress&cs=tinysrgb https://images.pexels.com/photos/33085/knowledge-book-library-glasses.jpg?w=1260&h=750&auto=compress&cs=tinysrgb)
addresses = ["Manchester, canada", "laval, canada", "Albany, canada", "Mont-Tremblant, canada", "Alcove, canada", "Quebec city, canada", "Montreal east, canada", "Blainville, canada", "Sherbrooke, canada", "Burnstown, canada"]
people = %w(http://lorempixel.com/400/400/people/1/ http://lorempixel.com/400/400/people/2/ http://lorempixel.com/400/400/people/3/ http://lorempixel.com/400/400/people/4/ http://lorempixel.com/400/400/people/5/ http://lorempixel.com/400/400/people/6/ http://lorempixel.com/400/400/people/7/ http://lorempixel.com/400/400/people/8/ http://lorempixel.com/400/400/people/9/ http://lorempixel.com/400/400/people/10/)


5.times do
user1 = User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name,email: Faker::Internet.email, password: Faker::Internet.password, pickup_address: addresses[i], attachment_url: people[i])
book1 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 10), category: Faker::Book.genre, author: Faker::Book.author, description: Faker::Lorem.sentence(50, true) ,user: user1, photo_url: urls[i])
i +=1
user2 = User.create(first_name: Faker::Name.first_name , last_name: Faker::Name.last_name,email: Faker::Internet.email, password: Faker::Internet.password, pickup_address: addresses[i], attachment_url: people[i])
book2 = Book.create(title: Faker::Book.title, price: Faker::Number.between(1, 10), category: Faker::Book.genre, author: Faker::Book.author, description: Faker::Lorem.sentence(50, true) ,user: user2, photo_url: urls[i])


order1 = Order.create(start_time: Faker::Date.between(Date.today, 1.week.from_now) ,end_time: Faker::Date.between(1.week.from_now, 2.week.from_now), book: book1, user: user2)
order2 = Order.create(start_time: Faker::Date.between(Date.today, 1.week.from_now) ,end_time: Faker::Date.between(1.week.from_now, 2.week.from_now), book: book2, user: user1)

i+=1

end

# TEST ACCOUNT
admin = User.create(first_name: 'Pika', last_name: 'Chu',email: 'pikachu@pokemail.net', password: 'pikapika', pickup_address: 'Downtown, Montreal', attachment_url: "app/assets/images/pika.jpg")

