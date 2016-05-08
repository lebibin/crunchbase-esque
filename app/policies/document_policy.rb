class DocumentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    (super || user.prospect? || user.company_pipeline_access?) && !user.single_company?
  end

  def create?
    super || user.company_pipeline_access?
  end

  def new?
    create?
  end

  def update?
    super || user.company_pipeline_access?
  end

  def edit?
    update?
  end

  def destroy?
    super || user.company_pipeline_access?
  end

end
