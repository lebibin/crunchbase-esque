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

class UserRole < ActiveRecord::Base
  belongs_to :user
  belongs_to :role

  validates :role_id, uniqueness: { scope: :user_id }
end
