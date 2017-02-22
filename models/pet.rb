require( './db/sql_runner' )

class Pet
  
  attr_accessor :id, :name, :type, :store_id

def initialize(options) 
  @id = options['id'].to_i
  @name = options['name']
  @type = options['type']
  @store_id = options['store_id'].to_i
end 

# def save
#   sql = "INSERT INTO pets(name,type,store_id) VALUES (#{@name}, #{@type}, #{@store_id}) RETURNING *"
#   pets = SQLRunner.run(sql)
#   @id = pets['id']
# end 


end 