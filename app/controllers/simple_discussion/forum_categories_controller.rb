class SimpleDiscussion::ForumCategoriesController < SimpleDiscussion::ApplicationController
  before_action :set_category, only: :index

  def new
    @category = ForumCategory.new
  end

  def index
    @forum_threads = ForumThread.where(forum_category: @category) if @category.present?
    @forum_threads = @forum_threads.pinned_first.sorted.includes(:user, :forum_category).paginate(per_page: 10, page: page_number)
    render "simple_discussion/forum_threads/index"
  end

  def create
    @category = ForumCategory.new(category_params)
    redirect_to simple_discussion.forum_threads_path
  end

  private

    def set_category
      @category = ForumCategory.friendly.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      p "does this work"
      redirect_to simple_discussion.forum_threads_path
    end

    def category_params
      params.require(:forum_categories).permit(:name)
    end
end
