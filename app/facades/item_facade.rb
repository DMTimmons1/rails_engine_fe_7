class ItemFacade
  def self.get_item(item_id)
    data = ApiService.call("/api/v1/items/#{item_id}")
    item = data.first.second
    Item.new(item)
  end
end