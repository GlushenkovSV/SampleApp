require 'spec_helper'

RSpec.describe "UserPages", type: :request do
  describe "GET /user_pages" do
  	let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  	subject { page }

    describe "works! (now write some real specs)" do
    	before { visit signup_path }
    	
	    it { should have_content('Sign up') }
	    it { should have_title("#{base_title} | Sign up") }
    end
  end
end
