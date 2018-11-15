require "rails_helper"

feature "Contact Creation" do
	scenario "allows acces to contacts page" do
		visit '/contacts'
		expect(page).to have_content 'Contact Us'
	end
end