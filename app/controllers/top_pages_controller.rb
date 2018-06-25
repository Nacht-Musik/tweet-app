class TopPagesController < ApplicationController
  # before_action :set_posts, only: [:index]
  before_action :set_users, only: [:index]

  def index
    if user_signed_in?
      @posts = Micropost.all
      @micropost = current_user.microposts.build
      @follow_users = current_user.followings.ids
    end
  end

  private
    def set_posts
      @posts = Micropost.all
    end

    def set_users
      @users = User.all
    end

end
