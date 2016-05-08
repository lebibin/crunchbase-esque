require 'rails_helper'

RSpec.describe DocumentPolicy do

  let!(:prospect) { FactoryGirl.create(:investor_prospect).user }
  let!(:single_company) { FactoryGirl.create(:investor_single_company).user }
  let!(:company_pipeline_access) { FactoryGirl.create(:investor_company_pipeline_access).user }
  let!(:full_access) { FactoryGirl.create(:investor_full_access).user }
  let!(:admin) { FactoryGirl.create(:investor_admin).user }
  let!(:document) { FactoryGirl.create(:document) }

  subject { described_class }

  context 'Prospect' do
    permissions :show? do
      it 'is permitted' do
        expect(subject).to permit(prospect, document)
      end
    end
    permissions :create?, :update?, :destroy? do
      it 'are not permitted' do
        expect(subject).not_to permit(prospect, document)
      end
    end
  end

  context 'Single Company' do
    permissions :show?, :create?, :update?, :destroy? do
      it 'are not permitted' do
        expect(subject).not_to permit(single_company, document)
      end
    end
  end

  context 'Company Pipeline Access' do
    permissions :show?, :create?, :update?, :destroy? do
      it 'are permitted' do
        expect(subject).to permit(company_pipeline_access, document)
      end
    end
  end

  context 'Full Access' do
    permissions :show?, :create?, :update?, :destroy? do
      it 'are permitted' do
        expect(subject).to permit(full_access, document)
      end
    end
  end

  context 'Admin' do
    permissions :show?, :create?, :update?, :destroy? do
      it 'are permitted' do
        expect(subject).to permit(admin, document)
      end
    end
  end

end
