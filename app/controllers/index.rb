get '/' do
  # Look in app/views/index.erb
  @categories = Category.all
  erb :categories
end

get '/:category/posts' do 
	@category = params[:category]
	id = Category.find_by_title(@category).id
	@posts = Post.find_all_by_category_id(id)

  erb :posts
end


get '/:category/create' do
  @category = params[:category]
  erb :create

 end

 post '/:category/create' do
  p params
  @item_key = rand(1..100)
  category_id = Category.find_by_title(params[:category]).id
  @new_post = Post.create(:title => params[:title],
  			  :description => params[:description],
  			  :price	=> params[:price],	
  			  :category_id => category_id,
  			  :email =>  params[:email],
  			  :item_key => @item_key)
  erb :update


end


get '/:category/:post_id' do
  post_id = params[:post_id]
  @category = params[:category]
  @post = Post.find(post_id)
  erb :item
end





post '/update' do

end

# Todo:
# make params hash in create:erb
# validate uniqueness of item_id
#  make a 'home button in the layout screen'

# get '/' do
#   # Look in app/views/index.erb
#   @categories = Category.all
#   erb :categories
# end

# get '/:category/posts' do 
#   #p params[:category].inspect
#   #@category_name = params[:category]
#   @category = Category.find_by_title("#{params[:category]}")
#   @posts = Post.find_all_by_category_id(@category.id)
#   erb :posts
# end

# get '/:category/:posts/item' do

#   erb :item
# end


# get '/:category/create' do
#   @category = params[:category]
#   erb :create

# end

# post '/:category/create' do
#   #p params.inspect
#   @cat_id = Category.find_by_title("#{params[:category]}")
#   Post.create(:title => params[:title],:description => params[:description],:price => params[:price],:category_id =>@cat_id.id)
#   #@post = Post.where("title = ?",params[:title])
#   redirect to("/#{params[:category]}/posts")
# end

# post '/update' do

# end







