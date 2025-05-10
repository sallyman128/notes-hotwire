require "rails_helper"

RSpec.feature "Notes", type: :system do
  scenario "User can log in" do
    sign_in(create(:user))

    expect(page).to have_text("Home Page")
  end

  scenario 'User can log out' do
    sign_in(create(:user))
    click_button "Log out"
    expect(Current.session).to be_nil
  end

  def sign_in(user)
    visit new_session_path
    fill_in "Email", with: user.email_address
    fill_in "Password", with: user.password
    click_button "Sign in"
  end
end
