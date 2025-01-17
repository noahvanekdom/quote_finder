require 'rails_helper'

RSpec.describe 'Landing Page' do
  it "can fill in form with a keyword, hit submit and redirect to quotes index" do
    visit root_path

    fill_in :keyword, with: 'I am'

    click_on "Search for Quotes"

    expect(current_path).to eq("/quotes")
  end

  it 'can return a list of up to 10 quotes based on search parameters' do
    visit root_path
    fill_in :keyword, with: 'hands'
    click_on "Search for Quotes"

    expect(page).to have_content("You can't shake hands with a clenched fist")
  end
end
