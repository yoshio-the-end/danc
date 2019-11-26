class PostsController < ApplicationController
  before_action :move_to_signin, except: [:index, :top]

  def index
    @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to action: :index
  end

  def search
    @posts = Post.search(params[:keyword])
    respond_to do |format|
      format.html
      format.json
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :address, :content, :image).merge(user_id: current_user.id)
  end

  def move_to_signin
    redirect_to new_user_session_path unless user_signed_in?
  end

end
