require "rails_helper"
require "support/database_cleaner"

feature "Article Creation" do
	before (:all) do
		sign_up
	end

	scenario "allows user to visit new article page" do
		visit new_article_path
    expect(page).to have_content 'New article'
	end
end
