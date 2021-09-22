require 'rails_helper'

RSpec.feature "UserLogins", type: :feature, js: true do

  before :each do
    User.create!(
      first_name: "Dennis",
      last_name: "Reynolds",
      email: "den@den.com",
      password: "123456",
      password_confirmation: "123456"
    )
  end

  scenario "they successfully login after inputting info" do
    visit root_path
    expect(page).to have_content 'Login'

    click_on 'Login'
    expect(page).to have_content 'Welcome back!'

    fill_in 'email', with: 'den@den.com'
    fill_in 'password', with: '123456'
    click_on 'Submit'

    expect(page).to have_content 'Logout'
    save_screenshot
  end
  
end
