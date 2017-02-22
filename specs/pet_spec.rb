require('minitest/autorun')
require('minitest/rg')
require_relative('../models/pet')

class TestPet < MiniTest::Test

  def setup
    options = {
      'id' => 1,
      'name' => 'Tony',
      'type' => 'Tiger'
    }
    @pet1 = Pet.new(options)
  end 

   def test_pet_has_id
    assert_equal(1, @pet1.id)
   end 







end 