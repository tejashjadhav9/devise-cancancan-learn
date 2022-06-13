class Ability
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, User 
      can :manage, Post
    elsif user.client?
      can :read, Post
    end
  end
 end