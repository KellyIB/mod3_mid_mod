require "rails-helper"

# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"
# Then I should see a total of the number of items returned by the search.
# Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients
describe "USDA API consumption" do
feature "user can search for foods by an ingredient" do

  it "user submits a food to search by and sees results" do

      visit '/'

      fill_in "Ingredient Search", with: "Sweet Potatoes"

      click_on "Search"

      expect(current_path).to eq("/foods")

      expect(page).to have_content(" Results")
      # And I should see a message "10 Results"
      expect(page).to have_css(".foods", count: 10)
      # And I should see a list of 10 foods that have the ingredient

      within(first(".food")) do
        expect(page).to have_css(food.ups_code)
        expect(page).to have_css(food.description)
        expect(page).to have_css(food.brand_owner)
        expect(page).to have_css(food.ingredients)
      end

    end
  end
