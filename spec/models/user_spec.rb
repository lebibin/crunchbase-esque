require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:company_member) { FactoryGirl.create(:company_member) }
  let!(:fund_manager) { FactoryGirl.create(:fund_manager) }
  let!(:investor) { FactoryGirl.create(:investor) }
  describe '#company_member?' do
    it 'should return true if type is company_member' do
      expect(company_member.company_member?).to be(true)
      expect(company_member.investor?).to be(false)
    end
  end
  describe '#fund_manager?' do
    it 'should return true if type is fund_manager' do
      expect(fund_manager.fund_manager?).to be(true)
      expect(fund_manager.investor?).to be(false)
    end
  end
  describe '#investor?' do
    it 'should return true if type is investor' do
      expect(investor.investor?).to be(true)
      expect(investor.company_member?).to be(false)
    end
  end
end
