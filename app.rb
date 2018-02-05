require "sinatra"

get '/' do
	erb :home
end

post '/name_choice' do
	fname = params[:fname]
	fmovie = params[:fmovie]
	redirect 'result?fname=' + fname + '&fmovie' + fmovie
end

get '/result' do
	fname = params[:fname]
	fmovie = params[:fmovie]
	erb :result, :locals => {:fname => fname, :fmovie => fmovie}
end
