require('minitest/autorun')
require('minitest/rg')
require_relative('../models/store')

class TestStore < MiniTest::Test

  def setup
    options = {
      'id' => 1,
      'name' => 'Pet Store',
      'address' => '123 Somewhere Place',
      'store_type' => 'Carnivore'
    }
    @store1 = Store.new(options)
  end 

  def test_store_has_id
    assert_equal(1, @store1.id)
  end 

  def test_store_has_name
    assert_equal("Pet Store", @store1.name)
  end 

  def test_store_has_address
    assert_equal("123 Somewhere Place", @store1.address)
  end 

  def test_store_has_type
    assert_equal("Carnivore", @store1.store_type)
  end 



end 