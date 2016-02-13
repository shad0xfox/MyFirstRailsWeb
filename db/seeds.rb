# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

jerry = User.create(  first_name: 'Jerry',  last_name: 'Wen' , email: 'jerry@email.com', password: 'Jerry1', role:"supervisor")
echo= User.create(  first_name: 'Echo',  last_name: 'Lee' , email: 'Echo@email.com', password: 'Echo', role:"admin")
zed= User.create(  first_name: 'Zed',  last_name: 'Wang' , email: 'Zed@email.com', password: 'Zed1', role:"admin")

p1 = Product.create( image: 'http://gd2.alicdn.com/bao/uploaded/i2/T1Zr7jFg4dXXXXXXXX_!!0-item_pic.jpg_400x400.jpg' ,name: 'photobook' , price: 350, amount: 15)
p2 = Product.create( image: 'http://i.kinja-img.com/gawker-media/image/upload/av1zd6o8hodkx1uve6cw.jpg' ,name: 'puzzle_1' , price: 400, amount: 20)
p3 = Product.create( image: 'http://cdn01.pinkoi.com/product/1dr4-Eh_/0/214/500x0.jpg' ,name: 'album' , price: 300, amount: 21)
p4 = Product.create( image: 'http://3.share.photo.xuite.net/iel1019/138d7aa/15721906/842828280_m.jpg' ,name: 'film' , price: 100, amount: 22)

Order.create( user_id: jerry.id, product_id: p2.id, number: 2, status: "In cart" )
Order.create( user_id: jerry.id, product_id: p1.id, number: 3, status: "In cart")
ol2 = Orderlist .create( user_id: jerry.id, order_time: "2016-01-10 07:43:25")
Order.create( user_id: jerry.id, product_id: p1.id, number: 4, status: "Order Determined", orderlist_id: ol2.id)
Order.create( user_id: jerry.id, product_id: p3.id, number: 2, status: "Order Determined", orderlist_id: ol2.id)