# == Schema Information
#
# Table name: roles
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :prospect, class: Role do
    name 'Prospect'
  end
  factory :single_company, class: Role do
    name 'Single Company'
  end
  factory :company_pipeline_access, class: Role do
    name 'Company Pipeline Access'
  end
  factory :full_access, class: Role do
    name 'Full Access'
  end
  factory :admin, class: Role do
    name 'Admin'
  end
end
