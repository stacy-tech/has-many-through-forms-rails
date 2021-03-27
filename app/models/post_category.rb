class PostCategory < ActiveRecord::Base
  belongs_to :post
  belongs_to :category

  private

  def post_params
    params.reequire(:post).permit(;title, :content, category_ids:[])
  end
end
