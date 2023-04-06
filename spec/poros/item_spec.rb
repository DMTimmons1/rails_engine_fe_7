require 'rails_helper'

RSpec.describe 'the items poros' do
  it 'returns one item as a poro from the api call' do
    @item = ItemFacade.get_item(4)
    expect(@item.id).to be_a(String) 
    expect(@item.id).to eq("4")

    expect(@item.name).to be_a(String) 
    expect(@item.name).to eq("Item Nemo Facere") 
    
    expect(@item.summary).to be_a(String) 
    expect(@item.summary).to eq("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.") 
    
    expect(@item.unit_price).to be_a(Float) 
    expect(@item.unit_price).to eq(42.91) 
  end
end