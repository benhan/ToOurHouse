class Ability
	include CanCan::Ability

  def initialize(user)
    user || User.new # Guest user

    if user.role == "admin"
      can :manage, :all
    elsif user.role == "toh_staff"
      can :create, Event
      can :update, Event
      can :manange, Osignup
      can :manage, Vsignup
      can :manage, Responsibility
      can :create, User
      can :update, User
      can :read, :all
    elsif user.role == "coordinator"
      can :manage, Vsignup
      can :create, Osignup
      can :update, Osignup
      can :update, Responsibility
      can :create, Responsibility
      can :read, :all
    elsif user.role == "volunteer"
      can :manage, Vsignup
      can :read, :all
    elsif user.role == "guest"
      can :read, :all
    else
      cannot :read, :all
    end
  end
end
