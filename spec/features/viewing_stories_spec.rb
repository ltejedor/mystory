require "spec_helper"

feature "Viewing stories" do
	scenario "Listing stories on homepage" do
		story = FactoryGirl.create(:story, title: "My Story")
		visit '/'
		click_link "My Story"
		expect(page.current_url).to eql(story_url(story))
	end
end