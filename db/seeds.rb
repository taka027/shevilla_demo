# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Tarea.create(name:'伊豆')
Tarea.create(name:'北関東')
Tarea.create(name:'神奈川')
Tcategory.create(name:'戸建')
Tcategory.create(name:'マンション')
Tvilla.create(address:'静岡県・・・', title:'南伊豆ヴィラ', description:'南伊豆の閑静な別荘地に。。', price:10000, tarea_id:1, tcategory_id:1)
Tvilla.create(address:'東京県・・・', title:'奥多摩ヴィラ', description:'奥多摩の別荘。。', price:12000, tarea_id:2, tcategory_id:1)
