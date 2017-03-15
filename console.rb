require_relative('./models/pet')
require_relative('./models/store')

require( 'pry-byebug' )

store1 = Store.new( {'name' => "Cat House", 'address' => "Random Street Name", 'store_type' => "Big Cat"} )
store1.save()

store2 = Store.new( {'name' => "Bird Sanctuary", 'address' => "A Street Name", 'store_type' => "Big Bird"} )
store2.save()
# -------------------------------------------------------------------------------------------
pet1 = Pet.new( {'name' => "Leo", 'type' => "Lion", 'store_id' => store1.id} )
pet1.save()

pet2 = Pet.new( {'name' => "Tony", 'type' => "Tiger", 'store_id' => store1.id} )
pet2.save() 

pet3 = Pet.new( {'name' => "Eddy", 'type' => "Eagle", 'store_id' => store2.id} )
pet3.save()

pet4 = Pet.new( {'name' => "Olly", 'type' => "Owl", 'store_id' => store2.id} )
pet4.save()


binding.pry
nil 