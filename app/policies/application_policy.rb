class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    user.full_access? || user.admin?
  end

  def show?
    scope.where(:id => record.id).exists?
  end

  def create?
    user.full_access? || user.admin?
  end

  def new?
    create?
  end

  def update?
    user.full_access? || user.admin?
  end

  def edit?
    update?
  end

  def destroy?
    user.full_access? || user.admin?
  end

  def scope
    Pundit.policy_scope!(user, record.class)
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope
    end
  end
end
