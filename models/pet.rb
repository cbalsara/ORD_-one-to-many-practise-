require( './db/sql_runner' )

class Pet
  
  attr_accessor :id, :name, :type, :store_id

def initialize(options) 
  @id = options['id'].to_i
  @name = options['name']
  @type = options['type']
  @store_id = options['store_id'].to_i
end 

def save
  sql = "INSERT INTO pets(name, type, store_id) VALUES ('#{@name}', '#{@type}', '#{@store_id}') RETURNING *"
  pets = SqlRunner.run(sql).first
  @id = pets['id'].to_i
end 
# Show the store a pet belongs 
def belongsTo
  sql = "SELECT * FROM stores WHERE id = #{@store_id}"
  chosenStore = SqlRunner.run(sql)
  result = chosenStore.map { |store|Store.new(store)  }
  return result
end 


end 

