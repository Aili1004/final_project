# == Schema Information
#
# Table name: emails
#
#  id            :integer          not null, primary key
#  email_address :text
#  wedding_id    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  name          :text
#

class Email < ActiveRecord::Base
	belongs_to :wedding
end
