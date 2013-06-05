class Post < ActiveRecord::Base
  belongs_to :category

  def item_key
  	rand(1..100)
  end
end
