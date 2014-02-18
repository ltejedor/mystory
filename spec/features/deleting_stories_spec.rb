require "spec_helper"

feature "Deleting stories" do
	scenario "Deleting a story" do
		FactoryGirl.create(:story, title: "Meowstory")

		visit "/"
		click_link "Meowstory"
		click_link "Delete this story"

		expect(page).to have_content("Story has been deleted.")

		visit "/"

		expect(page).to have_no_content("Meowstory")
	end
end