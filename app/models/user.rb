# == Schema Information
#
# Table name: users
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  type       :integer
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base

  TYPES = {
    company_member:   0,
    fund_manager:     1,
    investor:         2
  }.freeze

  enum type: TYPES

  has_many :user_roles
  has_many :roles, through: :user_roles

end
