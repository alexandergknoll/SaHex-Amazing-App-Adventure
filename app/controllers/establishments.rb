get '/establishments' do
  erb :"establishments/index"
end

get '/establishments/:establishment_id' do
  erb :"establishments/show"
end
