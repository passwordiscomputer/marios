require 'rails_helper'

describe "the edit a Product process" do
  it "edits a product" do
    product = Product.create(:name => "Chips ahoy", :cost => 8, :country => "France")
    visit product_path(product)
    click_link 'Edit'
    fill_in 'Name', :with => 'Home stuff'
    fill_in 'Cost', :with => 20
    fill_in 'Country', :with => 'USA'
    click_on 'Update Product'
    expect(page).to have_content 'Home stuff'
  end
end
