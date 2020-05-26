class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    # @post = Post.find(params[:id])
    
    # @post.category = post_params[:category]
    # @post.content = post_params[:content]
    # @post.title = post_params[:title]


    # @post.save

    if @post.update(post_params)

      redirect_to post_path(@post)
    else
      render :edit
     # redirect_to edit_post_path(@post)

    end

    
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
