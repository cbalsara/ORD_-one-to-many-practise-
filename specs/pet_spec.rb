require('minitest/autorun')
require('minitest/rg')
require_relative('../models/pet')

class TestPet < MiniTest::Test

  def setup
    options = {
      'id' => 1,
      'name' => 'Tony',
      'type' => 'Tiger',
      'store_id' => 10
    }
    @pet1 = Pet.new(options)
  end 

   def test_pet_has_id
    assert_equal(1, @pet1.id)
   end 

   def test_pet_has_name
    assert_equal("Tony", @pet1.name)
   end

   def test_pet_has_type
    assert_equal("Tiger", @pet1.type)
   end 

   def test_pet_has_reference_to_store
    assert_equal(10, @pet1.store_id)
   end 

end 