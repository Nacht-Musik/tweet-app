class TopPagesController < ApplicationController
  before_action :set_posts, only: [:index]
  before_action :set_users, only: [:index]

  def index
    if user_signed_in?
      @micropost = current_user.microposts.build
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
