get '/user/new' do
  erb :'user/new'
end

post '/user/new' do
  user = User.new(params[:user])
  if user.save
    session[user_id] = user.id
    redirect '/'
  else
    @errors = user.errors.messages
    erb :'user/new'
  end
end

get '/user/login' do
  erb :'user/login'
end

post '/user/login' do
  user = User.authenticate(params[:user][:email], params[:user][:password])
    if user != nil
      session[:user_id] = user.id
      redirect '/'
    else
      @login = "User not found please try again"
      erb :'user/login'
    end
end

get '/user/logout' do
  session[:user_id] = nil
  redirect '/'
end

get '/user/:id' do
  erb :'user/show'
end
