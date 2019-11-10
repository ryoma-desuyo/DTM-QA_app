class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destory]

  def index
    @posts = Post.order(created_at: :desc)
  end

  def show
  
  end

  def new
    @post = Post.new
  end

  def edit

  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: '作成できました'
    else
      render :new, alert: '作成できませんでした'
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: '更新できました'
    else
      render :edit, alert: '更新できませんでした'
    end
  end

  def destroy
    if @post.destroy
      redirect_to root_path, notice: '削除に成功しました'
    else
      redirect_to root_path, alert: '削除できませんでした'
    end
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params

  end
end
