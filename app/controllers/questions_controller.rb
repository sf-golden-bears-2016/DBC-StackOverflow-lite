get '/questions/:id' do
  @question = Question.find(params[:id])
  erb :'questions/show'
end

get '/question/new' do
erb:'questions/new'
end
