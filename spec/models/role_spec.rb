require 'rails_helper'

RSpec.describe Role, type: :model do
  it 'has_many user_roles' do
    expect(Role.reflect_on_association(:user_roles).macro).to eq(:has_many)
  end

  it 'has_many users' do
    expect(Role.reflect_on_association(:users).macro).to eq(:has_many)
  end

  it 'should only allow valid role defined in User::ROLES' do
    expect(Role.new(name: 'Invalid Role')).to_not be_valid
    expect(Role.new(name: User::ROLES.first.titleize)).to be_valid
  end
end
