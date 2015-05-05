class PostsController < ApplicationController
  def index
    @posts = Post.all
    @users = User.all

    @recent_comments = Comment.with_state(:published)
                       .includes(:commentable)
                       .recent.page(params[:page])
                       .where(commentable_state: [:published])
  end

  def show
    @post     = Post.find params[:id]
    @comments = @post.comments.with_state([:draft, :published]).nested_set
  end
end
