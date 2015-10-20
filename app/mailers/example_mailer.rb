class ExampleMailer < ActionMailer::Base
	default from: "aili.zhang91@gmail.com"

	def sample_email(user)
		@user = user
		@url = 'https://we-r-getting-married.herokuapp.com/weddings/2/guests/new'
		mail(to: @user.email_address, subject: 'Wedding Invitation')
	end
end


