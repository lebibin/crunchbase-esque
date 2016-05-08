require 'rails_helper'

RSpec.describe Role, type: :model do
  it 'has_many user_roles' do
    expect(Role.reflect_on_association(:user_roles).macro).to eq(:has_many)
  end

  it 'has_many users' do
    expect(Role.reflect_on_association(:users).macro).to eq(:has_many)
  end
end
