class Ability
	include CanCan::Ability

  def initialize(user)
    @user = user || User.new # for guest
    @user.roles.each { |role| send(role) }

    if @user.roles.size == 0
      can :read, :all #for guest without roles
    end
  end

  def admin
    toh_staff
  end

  def toh_staff
    coordinator
  end

  def coordinator
    volunteer
    can :manage, :all
  end

  def volunteer
    can :read, :all
  end

  def guest
    can :read, :all
  end

  def banned
    cannot :read, :all
  end
end
