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

def self.find_store(id)
  sql = "SELECT * FROM stores WHERE id = #{id}"
  chosenStore = SqlRunner.run(sql)
  return chosenStore.first
end 

def self.list_all_stores
  sql = "SELECT * FROM stores"
  all_stores = SqlRunner.run(sql)
  result = all_stores.map { |store|Store.new(store)  }
  return result
end 

def update_store(name, type_of_store)
  @name = name
  @store_type = type_of_store
  sql = "UPDATE stores SET name = '#{@name}', address = '#{address}', store_type = '#{@store_type}' WHERE id = #{@id} "
  SqlRunner.run(sql)
  return 'store info updated'
end 

def self.delete_store(id)
  sql = "DELETE FROM stores WHERE id = #{id}"
  result = SqlRunner.run(sql).first
  return result
end
 
end 
