require 'spec_helper'

describe "StaticPages" do

	let(:base_title) { "Ruby on Rails Tutorial Sample App" }
	subject { page }
	
	describe "HomePages" do
		before { visit root_path }
	  it "should have content Home" do
	    should have_content('Sample App')
	  end

	  it "should have content Home" do
	    should have_title("#{base_title} | Home")
	  end
	end

	describe "HelpPages" do
		before { visit help_path }
		it "should have the content 'Help'" do
		  should have_content('Help')
		end
		it "should have content Help" do
		  should have_title("#{base_title} | Help")
	  end
	end

	describe "AboutPage" do
		before { visit about_path}
    it "should have the content 'About Us'" do
      should have_content('About Us')
    end
    it "should have content About" do
	    should have_title("#{base_title} | About")
	  end
  end

  describe "ContactPage" do
  	before { visit contact_path }
    it "should have the content 'Contact'" do
      should have_content('Contact')
    end
    it "should have content Contact" do
	    should have_title("#{base_title} | Contact")
	  end
  end

end

