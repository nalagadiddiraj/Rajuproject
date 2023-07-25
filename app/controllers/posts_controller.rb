# app/controllers/posts_controller.rb
class PostsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
  
    def index
      @posts = Post.all
    end
  
    def show
      @post = Post.find(params[:id])
    end
  
    def new
      @post = current_user.posts.build
    end
  
    def create
      @post = current_user.posts.build(post_params)
      if @post.save
        redirect_to post_path(@post), notice: 'Post was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def post_params
      params.require(:post).permit(:author_name, :content, :photo)
    end
  end
  