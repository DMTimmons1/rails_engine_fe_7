class MerchantFacade
  def self.get_merchants
    data = ApiService.call("/api/v1/merchants")
    merchants = data.first.second
    merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.get_merchant(merchant_id)
    data = ApiService.call("/api/v1/merchants/#{merchant_id}")
    merchant = data.first.second
    Merchant.new(merchant)
  end

  def self.get_merchant_items(merchant_id)
    data = ApiService.call("/api/v1/merchants/#{merchant_id}/items")
    items = data.first.second
    items.map do |item|
      Item.new(item)
    end
  end
end