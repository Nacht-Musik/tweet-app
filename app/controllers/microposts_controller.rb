class MicropostsController < ApplicationController
  before_action :set_micropost, only: [:show]

  def create
    # binding.pry
    post = Micropost.new(micropost_param)
    if post.save
      flash = {success: 'ツイートしました'}
    else
      flash = {error: 'ツイートに失敗しました'}
    end
    redirect_to root_url, flash: flash
  end

  def show
  end

  def destroy
  end

  private
    def micropost_param
      params.require(:micropost).permit(:user_id, :content)
    end

    def set_micropost
      @micropost = Micropost.find(params[:id])
    end
end
