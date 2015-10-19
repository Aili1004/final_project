# == Schema Information
#
# Table name: weddings
#
#  id            :integer          not null, primary key
#  bride_name    :text
#  groom_name    :text
#  love_story    :text
#  number_guests :integer
#  date          :date
#  location      :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_id       :integer
#

class Wedding < ActiveRecord::Base
	has_many :images
	has_many :emails
	has_and_belongs_to_many :guests
	belongs_to :user
end
