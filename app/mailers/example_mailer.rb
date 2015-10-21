class ExampleMailer < ActionMailer::Base
	default from: "aili.zhang91@gmail.com"

	def sample_email(user, wedding_id)
		@user = user
		@url = 'https://we-r-getting-married.herokuapp.com/weddings/' + wedding_id.to_s + '/guests/new'
		# @url = 'http://localhost:3000/weddings/' + wedding_id.to_s + '/guests/new'
		mail(to: @user.email_address, subject: 'Wedding Invitation')
	end
end


