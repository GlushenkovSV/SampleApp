require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }
	
	describe "HomePages" do
	  it "should have content Home" do
	    visit '/static_pages/home'
	    expect(page).to have_content('Sample App')
	  end

	  it "should have content Home" do
	    visit '/static_pages/home'
	    expect(page).to have_title("#{base_title} | Home")
	  end
	end

	describe "HelpPages" do
		it "should have the content 'Help'" do
	  	visit '/static_pages/help'
	  	expect(page).to have_content('Help')
		end
		it "should have content Help" do
	    visit '/static_pages/help'
	    expect(page).to have_title("#{base_title} | Help")
	  end
	end

	describe "AboutPage" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
    it "should have content About" do
	    visit '/static_pages/about'
	    expect(page).to have_title("#{base_title} | About")
	  end
  end

  describe "ContactPage" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end
    it "should have content Contact" do
	    visit '/static_pages/contact'
	    expect(page).to have_title("#{base_title} | Contact")
	  end
  end

end
