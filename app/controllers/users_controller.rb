# get '/users' do
#   @users = User.all #define instance variable for view

#   erb :'users/index' #show all users view (index)
# end


get '/users/new' do

  erb :'/users/new'
end

post '/users/new' do
  @user = User.new(params)
  if @user.save
    login(@user)
    redirect "/users/#{@user.id}"
  else
    @error = "Sorry, you entered in some wrong information - please try again."
    erb :'/users/new'
  end
end

get '/users/:id' do
  if session[:user_id]
    @user = User.find(params[:id])
  end
  erb :'/users/show'
end


delete '/users/:id' do
  #get params from url
  @user = User.find(params[:id]) #define user to delete

  @user.destroy #delete user

  redirect '/users' #redirect back to users index page
end


