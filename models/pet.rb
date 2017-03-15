require( './db/sql_runner' )

class Pet
  
  attr_accessor :id, :name, :type, :store_id

def initialize(options) 
  @id = options['id'].to_i
  @name = options['name']
  @type = options['type']
  @store_id = options['store_id'].to_i
end 

def save()
  sql = "INSERT INTO pets(name, type, store_id) VALUES ('#{@name}', '#{@type}', '#{@store_id}') RETURNING *"
  pets = SqlRunner.run(sql).first
  @id = pets['id'].to_i
end 

def edit_pet(new_name)
  @name = new_name
  sql = "UPDATE pets SET name = '#{@name}', type = '#{type}', store_id = '#{store_id}' WHERE id = #{@id}"
  SqlRunner.run(sql)
  return 'pet edited'
end 

def self.delete_pet(id)
  sql = "DELETE from pets WHERE id = #{id} "
  result = SqlRunner.run(sql).first
  return result
end 

def belongs_to()
  sql = "SELECT * FROM stores WHERE id = #{@store_id}"
  chosenStore = SqlRunner.run(sql)
  result = chosenStore.map { |store|Store.new(store)  }
  return result
end 

def self.find_pet(id)
  sql = "SELECT * FROM pets WHERE id = #{id}"
  chosenPet = SqlRunner.run(sql)
  return chosenPet.first
end 

def self.find_all_pets
  sql = "SELECT * FROM pets"
  all_pets = SqlRunner.run(sql)
  result = all_pets.map { |pet|Pet.new(pet)  }
  return result
end 

# list all pets



end 

