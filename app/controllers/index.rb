get '/' do
  # Look in app/views/index.erb
  erb :index
end


get '/categories' do
  # Look in app/views/index.erb

  @buy_post = Category.find_by_name("buy").posts
  @sell_post =  Category.find_by_name("sell").posts
  erb :get_categories
end


post '/categories' do
  # Look in app/views/index.erb

    category = Category.find_by_name(params[:category][:name])
    post = Post.new(params[:post])
    post.category = category
    post.save
    @buy_post = Category.find_by_name("buy").posts
    @sell_post =  Category.find_by_name("sell").posts

  erb :get_categories
end

post '/posts' do

  erb :get_posts
end

