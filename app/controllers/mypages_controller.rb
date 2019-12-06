class MypagesController < ApplicationController
  def index
    
  end

  def favorite
    @user = User.find(params[:id])
  end

  def profile
    
  end
end
