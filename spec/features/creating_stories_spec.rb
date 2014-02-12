require "spec_helper"

feature "Creating stories" do
	scenario "can create a personalized story" do
		visit '/'

		click_link "Create your story"

		fill_in "Name", with: "Aurora"
		fill_in "Town", with: "Castlevania"
		click_button "Create Story"

		expect(page).to have_content("Story has been created")
	end
end