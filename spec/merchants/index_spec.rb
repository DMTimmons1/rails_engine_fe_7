require 'rails_helper'

RSpec.describe 'the merchants index page' do
  before do
    visit '/merchants'
  end
  it 'lists all the merchants in the database' do
    expect(page).to have_link("Schroeder-Jerde")
    expect(page).to have_link("Klein, Rempel and Jones")
    expect(page).to have_link("Willms and Sons")
    expect(page).to have_link("Cummings-Thiel")
    expect(page).to have_link("Williamson Group")
    expect(page).to have_link("Bernhard-Johns")
    expect(page).to have_link("Osinski, Pollich and Koelpin")
    expect(page).to have_link("Hand-Spencer")
    expect(page).to have_link("Bechtelar, Jones and Stokes")
    expect(page).to have_link("Kozey Group")
    expect(page).to have_link("Glover Inc")
  end

  it 'each link goes to the show page for that merchant' do
    click_link "Schroeder-Jerde"

    expect(current_path).to eq("/merchants/1")
  end
end