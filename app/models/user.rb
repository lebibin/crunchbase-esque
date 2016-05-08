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

  ROLES = %w{ prospect single_company company_pipeline_access full_access admin }

  enum type: TYPES

  has_many :user_roles
  has_many :roles, through: :user_roles

  ROLES.each do |role|
    define_method "#{role}?" do
      !roles.where(name: role.titleize).empty?
    end
  end

end
