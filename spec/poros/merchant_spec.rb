require 'rails_helper'

RSpec.describe 'the merchants poros' do
  it 'returns all merchants as a poro from the api call' do
    @merchants = MerchantFacade.get_merchants

    @merchants.each do |merchant|
      expect(merchant.id).to be_a(String)
      expect(merchant.name).to be_a(String)
    end
  end

  it 'returns one merchant as a poro from the api call' do
    @merchant = MerchantFacade.get_merchant(1)
    
    expect(@merchant.id).to be_a(String) 
    expect(@merchant.id).to eq("1")

    expect(@merchant.name).to be_a(String) 
    expect(@merchant.name).to eq("Schroeder-Jerde") 
  end

  it 'returns all the items associated with the merchant' do
    @merchant_items = MerchantFacade.get_merchant_items(1)

    @merchant_items.each do |item|
      expect(item.id).to be_a(String)
      expect(item.name).to be_a(String)
      expect(item.summary).to be_a(String)
      expect(item.unit_price).to be_a(Float)
    end
  end
end