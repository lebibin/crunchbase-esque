require 'rails_helper'

RSpec.describe UserRole, type: :model do
  let!(:investor_prospect) { FactoryGirl.create(:investor_prospect) }
  let!(:admin) { FactoryGirl.create(:admin) }
  it 'should not allow having duplicate roles' do
    expect{ investor_prospect.user.roles << admin }.to change(UserRole, :count)
    expect{ investor_prospect.user.roles << investor_prospect.role }.to raise_error(ActiveRecord::RecordInvalid)
  end
end
