class ExampleMailer < ActionMailer::Base
	default from: "aili.zhang91@gmail.com"

	def sample_email(user)
		@user = user
		@url = 'http://localhost:3000/weddings/6/guests/new'
		mail(to: @user.email_address, subject: 'Wedding Invitation')
	end
end
