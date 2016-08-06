get '/users' do
	redirect '/login'
end

get '/users/new' do
	erb :'/users/new'
end

post '/users/new' do
	erb :'/users/profile'
end

post '/users' do
	@user = User.new(params[:user])
	if @user.save
    redirect "/login"
  else
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end

get '/users/:id/edit' do
	@user = User.find(params[:id])
	erb :'/users/edit'
end

put '/users/:id' do
	user.update_attributes(params[:user])
  redirect "/users/#{user.id}"
end

delete '/users/:id' do
	user = User.find(params[:id])
	user.destroy
	redirect '/login'
end

