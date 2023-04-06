require 'rails_helper'

RSpec.describe 'the items show page' do
  before do
    visit '/items/4'
  end
  it 'lists all the items belonging to the merchant' do
    expect(page).to have_content("Item Nemo Facere")
    expect(page).to have_content("Unit Price: $42.91")
    expect(page).to have_content("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
  end
end