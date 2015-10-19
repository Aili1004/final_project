# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  name            :text
#  password_digest :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
	has_secure_password

	has_many :weddings

	validates :email, :presence => true, :uniqueness => true 
	validates :name, :presence => true, :uniqueness => true, :length => { :minimum => 3 }

end
