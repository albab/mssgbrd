require 'rails_helper'
describe Comment do
	it "has a body" do
		comment = Comment.new(body: "A Body")
		expect(comment.body).to eq "A Body"
	end
	it "needs a user amd post" do
		comment = Comment.create(body: "Test Body")
		expect {comment.save!}.to raise_error(ActiveRecord::RecordInvalid)
	end
	it "has a color" do
		user = User.create(email: "color-test@test.com", first_name: "Mr.", last_name: "Test", about_me: "Just a Test", password: "qwerty1234", password_confirmation: "qwerty1234")
		user.save!
		post = Post.create(title: "Test Post", body: "Test Post Body", user_id: user.id)
		post.save!
		comment = Comment.new(body: "A Body", post_id: post.id, user_id: user.id)
		comment.save!
		expect(comment.color.present?).to eq true
	end
end