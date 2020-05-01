# frozen_string_literal: true

class Ability
  include CanCan::Ability


  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :read, :all
    can :manage, Article, user_id: user.id
    can :manage, User, email: user.email
    if user.email == "test@test.com" || user.admin_role?
    #return unless user.admin_role?
    can :access, :rails_admin
    can :read, :dashboard
    can :manage, :dashboard
    can :manage, :rails_admin
    can :manage, :all
    end
  end


  # def initialize(user)
  #   user ||= User.new # guest user (not logged in)
  #   #can :manage, :all # <-- Temporary access to everything for all users
  #   if user.admin_role?
  #     can :manage, :all
  #     can :access, :rails_admin
  #     can :manage, :dashboard
  #   else
  #     can :manage, Article, user_id: user.id
  #     can :read, :all
  #   end
    
    
    
    
    
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities

end
