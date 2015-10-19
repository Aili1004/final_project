class ExampleMailer < ActionMailer::Base
	default from: "aili.zhang91@gmail.com"

	def sample_email(user)
		@user = user
		@url = 'https://limitless-tor-6126.herokuapp.com/weddings/2/guests/new'
		mail(to: @user.email_address, subject: 'Wedding Invitation')
	end
end


