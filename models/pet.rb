class Pet
  
  attr_accessor :id, :name, :type, :store_id

def initialize(options) 
  @id = options['id'].to_i
  @name = options['name']
  @type = options['type']
  @store_id = options['store_id'].to_i
end 


end 