require 'rails_helper'

RSpec.describe 'the merchants show page' do
  before do
    visit '/merchants/1'
  end
  it 'lists all the items belonging to the merchant' do
    expect(page).to have_link("Item Nemo Facere")
    expect(page).to have_link("Item Expedita Aliquam")
    expect(page).to have_link("Item Provident At")
    expect(page).to have_link("Item Expedita Fuga")
    expect(page).to have_link("Item Est Consequuntur")
    expect(page).to have_link("Item Quo Magnam")
    expect(page).to have_link("Item Quidem Suscipit")
    expect(page).to have_link("Item Rerum Magni")
    expect(page).to have_link("Item Et Cumque")
    expect(page).to have_link("Item Voluptatem Sint")
    expect(page).to have_link("Item Itaque Consequatur")
  end

  it 'each link goes to the show page for that item' do
    click_link "Item Nemo Facere"

    expect(current_path).to eq("/items/4")
  end
end