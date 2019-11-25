require "rails_helper"

RSpec.feature "Moving Detail Page" do
  scenario "A user moves a detail page" do
    visit "/posts"
    click_link "投稿"
    expect(page).to have_content("投稿者名")
    expect(page.current_path).to eq(new_post_path)
  end
end
