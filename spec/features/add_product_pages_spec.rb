require 'rails_helper'

describe "the add a Product process" do
  it "adds a new product" do
    visit products_path
    click_link 'New Product'
    fill_in 'Name', :with => 'Home stuff'
    fill_in 'Cost', :with => 20
    fill_in 'Country', :with => 'USA'
    click_on 'Create Product'
    expect(page).to have_content 'Review was succesfully added'
  end
end
