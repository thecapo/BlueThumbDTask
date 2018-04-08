require 'rails_helper'

RSpec.feature "Searches", type: :feature do
  before(:each) do
    visit root_path
      within('form') do
    end
  end
  context "user search box" do
    scenario "no text is entered in search, nothing happens" do
      click_button 'Search'
      expect(page).to have_no_xpath("//img")
    end

    scenario "should display images" do
      within('form') do
        fill_in 'Search Photos', with: 'cars'
      end
      click_button 'Search'
      expect(page).to have_xpath("//img")
    end

    scenario "should check presence of input" do
      expect(page).to have_selector("//input")
    end

    scenario "should check search button" do
      expect(page).to have_button("Search")
    end

    scenario "should find input field name Search Photos " do
      expect(page).to have_field("Search Photos")
    end
  end

  context "shown images" do
    scenario "should have link on each image" do
      within('form') do
        fill_in 'Search Photos', with: 'cars'
      end
      click_button 'Search'
      expect(page).to have_link
    end

    scenario "should show only clicked image" do
      within('form') do
        fill_in 'Search Photos', with: 'cars'
      end
      click_button 'Search'
      flickr_link = find(:xpath, '//a[1]/img')
      flickr_link.click
    end
  end
end



