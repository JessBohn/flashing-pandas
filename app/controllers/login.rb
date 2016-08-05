get '/login' do
  erb :"users/login"
end

post '/login' do
  @user = User.find_by(username: params[:username])
  if @user
    if @user.password == params[:password]
      session[:user] = @user.username
      redirect '/'
    else
      redirect '/login'
    end
  else
    redirect '/login'
  end
end

get '/logout' do
  session.delete(:user)
  redirect '/'
end

