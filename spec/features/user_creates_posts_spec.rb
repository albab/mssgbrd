require 'rails_helper'

feature 'User can create a Post' do
	scenario 'they can click the add button and successfully create a post' do
		user = User.create(email: "alex@alexbabi.ch", password: "qwerty1234", password_confirmation: "qwerty1234")
		user.save!
		visit root_path
		fill_in 'user[email]', with: user.email
		fill_in 'user[password]', with: user.password
		click_button 'Log in to your account'
		expect(page).to have_content "Latest Posts"
	end
end