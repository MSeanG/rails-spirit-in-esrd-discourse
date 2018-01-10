class RepliesController < ApplicationController
  before_action :find_post
  before_action :find_reply, only: [:edit, :update, :destroy]

  def create
    @reply = @post.replies.create(reply_params)
    @reply.user_id = current_user.id 
    if @reply.save
      redirect_to post_path(@post)
    else
      render 'new'
    end
  end

  def show
    
  end

  def edit

  end

  def update
    if @reply.update(reply_params)
      redirect_to post_path(@post)
    else 
      render 'edit'
    end
  end

  def destroy 
    @reply.destroy
    redirect_to post_path(@post)
  end

  private
    def reply_params
      params.require(:reply).permit(:subject)
    end

    def find_post
      @post = Post.find(params[:post_id])
    end

    def find_reply
      @reply = @post.replies.find(params[:id])
    end
end
