class PrototypesController < ApplicationController
  def index
    #@prototypes = Prototype
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)

    if @prototype.save
      redirect_to root_path
    else
      render :new
    end

    def destroy
      @prototype = Prototype.find(params[:id])
      redirect_to root_path
    end
  end
end

def show
  @prototype = Prototype.find(params[:id])
  @comment = Comment.new
  @comments = @prototype.comments.includes(:user)
end

def edit
  @prototype = Prototype.find(params[:id])
  unless user_signed_in?
  redirect_to root_path
  end
end

  def update
  end

  private

  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image ).merge(user_id: current_user.id)
  end
