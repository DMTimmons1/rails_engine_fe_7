class Item
  attr_reader :id,
              :name,
              :summary,
              :unit_price  
  def initialize(data)
    @id         = data[:id]
    @name       = data[:attributes][:name] 
    @summary    = data[:attributes][:description] 
    @unit_price = data[:attributes][:unit_price] 
  end
end