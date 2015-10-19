# == Schema Information
#
# Table name: guests
#
#  id            :integer          not null, primary key
#  full_name     :text
#  relationship  :text
#  greeting      :text
#  is_attending  :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  number_people :integer
#

class Guest < ActiveRecord::Base

	has_and_belongs_to_many :weddings

end
