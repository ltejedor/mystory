require "spec_helper"

feature "Creating stories" do
	scenario "can create a personalized story" do
		visit '/'

		click_link "Create your story"

		fill_in "What is the name of your story?", with: "My super cool story!"
		fill_in "And what's your name?", with: "Aurora"
		fill_in "Where are you going?", with: "Castlevania"
		click_button "Create Story"

		expect(page).to have_content("Story has been created")
	end
end