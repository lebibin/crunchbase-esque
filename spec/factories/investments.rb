# == Schema Information
#
# Table name: investments
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :investment do
    name "MyString"
  end
end
