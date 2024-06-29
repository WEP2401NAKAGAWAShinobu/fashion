# frozen_string_literal: true
class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # 未ログインユーザーを扱うためのデフォルトユーザー

    if user.admin?
      can :manage, :all
    else
      can :read, :all
      # 追加の権限設定はここに記述
    end
  end
end