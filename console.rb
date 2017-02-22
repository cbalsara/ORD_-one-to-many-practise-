require_relative('./models/pet')
require_relative('./models/store')

require( 'pry-byebug' )

store1 = Store.new( {'name' => "Pet Store", 'address' => "Random Street Name", 'store_type' => "Big Cat"} )
store1.save()

pet1 = Pet.new( {'name' => "Leo", 'type' => "Lion", 'store_id' => store1.id} )
pet1.save() 

binding.pry
nil 