#NEW
get '/posts/new' do
  # @tags = Tag.all
  erb :'/posts/new'
end

post '/posts' do
  newpost = Post.new
  newpost.title = params[:title]
  newpost.description = params[:content]
  newpost.save
  redirect "/posts/update"
end
#NEW

#UPDATE
get '/posts/update' do
  @title =  Post.all
  erb :'/posts/update'
end

get '/posts/:id' do
  erb :index
end

post '/home' do
erb :index
end
#UPDATE

#EDIT
get '/posts/:id/edit' do

  erb :'/posts/edit'
end

post '/edit' do

erb :'/posts/update'
end
#EDIT