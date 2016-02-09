# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Jerry = User.create(  first_name: 'Jerry',  last_name: 'Wen' , email: 'jerry@email.com', password: 'Jerry1', role:"supervisor")
Echo= User.create(  first_name: 'Echo',  last_name: 'Lee' , email: 'Echo@email.com', password: 'Echo', role:"admin")
Zed= User.create(  first_name: 'Zed',  last_name: 'Wang' , email: 'Zed@email.com', password: 'Zed1', role:"admin")

p1 = Product.create( image: 'http://gd2.alicdn.com/bao/uploaded/i2/T1Zr7jFg4dXXXXXXXX_!!0-item_pic.jpg_400x400.jpg' ,name: 'photobook' , price: 350, amount: 0)
p2 = Product.create( image: 'http://i.kinja-img.com/gawker-media/image/upload/av1zd6o8hodkx1uve6cw.jpg' ,name: 'puzzle_1' , price: 400, amount: 0)