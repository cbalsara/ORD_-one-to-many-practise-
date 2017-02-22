class Pet
  
  attr_accessor :id, :name, :type

def initialize(options) 
  @id = options['id'].to_i
  @name = options['name']
  @type = options['type']
end 


end 