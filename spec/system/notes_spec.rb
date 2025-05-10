require "rails_helper"

RSpec.feature "Notes", type: :system do
  scenario "User creates a new widget" do
    user = create(:user)

    visit new_session_path
    fill_in "Email", with: user.email_address
    fill_in "Password", with: user.password

    click_button "Sign in"

    expect(page).to have_text("Home Page")
  end
end
