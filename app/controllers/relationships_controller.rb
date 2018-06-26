class RelationshipsController < ApplicationController
  # before_action :user_login?

  def create
    relation = Relationship.new(relationship_param)
    if relation.save
      flash[:success] = 'ユーザをフォローしました'
    else
      flash[:errors] = 'フォローに失敗しました'
    end
    # redirect_to edit_user_registration_path
    redirect_to root_url
  end

  def destroy
    relation = Relationship.find_by(relationship_param)
    if relation
      relation.destroy
      flash[:success] = 'フォローを解除しました。'
    end
    # redirect_to edit_user_registration_path
    redirect_to root_url
  end

  private
    def relationship_param
      params.require(:relationship).permit(:user_id, :follow_id)
    end
end
