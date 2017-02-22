class Store

attr_accessor :id, :name, :address, :store_type

def initialize(options)
  @id = options['id'].to_i
  @name = options['name']
  @address = options['address']
  @store_type = options['store_type']
end 





end 
