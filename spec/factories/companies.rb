# == Schema Information
#
# Table name: companies
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :company do
    name "MyString"
  end
end
