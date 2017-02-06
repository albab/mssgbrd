require 'rails_helper'
describe Post do
	it "has a title" do
		post = Post.new(title: "A Title")
		expect(post.title).to eq "A Title"
	end
	it "needs a user" do
		post = Post.create(title: "Test Title", body: "Test Body")
		expect {post.save!}.to raise_error(ActiveRecord::RecordInvalid)
	end
	it "has a body" do
		post = Post.new(body: "A Body")
		expect(post.body).to eq "A Body"
	end
	it "can have comments" do
		user = User.create(email: "test@test.com", first_name: "Mr.", last_name: "Test", about_me: "Just a Test", password: "qwerty1234", password_confirmation: "qwerty1234")
		user.save!
		post = Post.new(title: "Title", body: "Body", user_id: user.id)
		post.save!
		comment = post.comments.create(body: "Test Comment")
		expect(comment.body).to eq "Test Comment"
	end
end