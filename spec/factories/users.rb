# == Schema Information
#
# Table name: users
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  type       :integer
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :company_member, class: User do
    type :company_member
  end
  factory :fund_manager, class: User do
    type :fund_manager
  end
  factory :investor, class: User do
    type :investor
  end
end
