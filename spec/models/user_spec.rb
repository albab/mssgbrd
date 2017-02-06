require 'rails_helper'
describe User do
	it "has a first name" do
		user = User.new(first_name: "Alex")
		expect(user.first_name).to eq "Alex"
	end
	it "has a last name" do
		user = User.new(last_name: "Babich")
		expect(user.last_name).to eq "Babich"
	end
	it "has an about me" do
		user = User.new(about_me: "Just a 'lil something 'bout me.")
		expect(user.about_me).to eq "Just a 'lil something 'bout me."
	end
end