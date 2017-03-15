require( './db/sql_runner' )

class Store

attr_accessor :id, :name, :address, :store_type

def initialize(options)
  @id = options['id'].to_i
  @name = options['name']
  @address = options['address']
  @store_type = options['store_type']
end 

def save()
  sql = "INSERT INTO stores(name, address, store_type) VALUES ('#{@name}', '#{@address}', '#{@store_type}') RETURNING *"
  stores = SqlRunner.run(sql).first
  @id = stores['id'].to_i
end

def all_pets()
  sql = "SELECT * FROM pets WHERE store_id = #{@id}"
  pets = SqlRunner.run(sql)
  result = pets.map { |pet| Pet.new(pet)  }
  return result
end 
# find certain stroes by their id 
# edit pet stores
# delete pet stores 
# list all pet stores 





end 
