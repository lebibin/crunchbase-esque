# == Schema Information
#
# Table name: user_roles
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  role_id    :integer
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_user_roles_on_role_id  (role_id)
#  index_user_roles_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_318345354e  (user_id => users.id)
#  fk_rails_3369e0d5fc  (role_id => roles.id)
#

FactoryGirl.define do
  factory :investor_prospect, class: UserRole do
    association :user, factory: :investor
    association :role, factory: :prospect
  end
  factory :investor_single_company, class: UserRole do
    association :user, factory: :investor
    association :role, factory: :single_company
  end
  factory :investor_company_pipeline_access, class: UserRole do
    association :user, factory: :investor
    association :role, factory: :company_pipeline_access
  end
  factory :investor_full_access, class: UserRole do
    association :user, factory: :investor
    association :role, factory: :full_access
  end
  factory :investor_admin, class: UserRole do
    association :user, factory: :investor
    association :role, factory: :admin
  end
end
