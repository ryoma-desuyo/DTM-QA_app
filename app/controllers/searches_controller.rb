class SearchesController < ApplicationController
  def index
    @posts = Post.search(params[:search]).limit(132)
    @search = params[:search]
  end
end
