#may not need this
get '/users' do
	redirect '/login'
end

get '/users/new' do
	erb :'/users/new'
end


post '/users' do
	@user = User.new(params[:user])
	erb :'/users/new'
end

get '/users/:id' do
	erb :'/users/profile'
end

get '/users/:id/edit' do
	erb :'/users/edit'
end

put '/users/:id' do
end

delete '/users/:id' do
	user = User.find(params[:id])
	user.destroy
	redirect '/login'
end

