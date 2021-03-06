class PostsController < ApplicationController
  before_action :authenticate_user!
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to conversation_messages_path(@conversation)
  end

  def index
    @posts = Post.all
    # @student = Student.find(params[:id])
    # @mentor = Mentor.find(params[:id])
  end

  def show
    @post = User.find(params[:id]).posts.order(created_at: :desc)
  end

  private

  def post_params
    params.require(:post).permit(:message, :file)
  end
end
