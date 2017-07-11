# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all
Order.destroy_all
User.destroy_all

@user1 = User.create(email: 'raphty@gmail.com', password: 'wjajssa')
@book1 = Book.new(title: 'Harry-Potter', price: 15, category: "Sci-fi")
@order1 = Order.new(start_time: Date.new(2016, 12, 25) ,end_time: Date.new(2017, 03, 27))
@order1.book = @book1
@order1.user = @user1
@book1.user = @user1
@book1.save
@order1.save


@user2 = User.create(email: 'cristy@gmail.com', password: 'wdfdjssa')
@book2 = Book.new(title: 'Ploppy plop', price: 19, category: "Fairy Tale")
@order2 = Order.new(start_time: Date.new(2015, 12, 25) ,end_time: Date.new(2018, 03, 27))
@order2.book = @book2
@order2.user = @user2
@book2.user = @user2
@book2.save
@order2.save
