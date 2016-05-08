# == Schema Information
#
# Table name: roles
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

class Role < ActiveRecord::Base
  has_many :user_roles
  has_many :users, through: :user_roles

  validates :name, uniqueness: true
end
