get '/cities' do
  @cities = City.all.sort_by{ |city| city.name}
  erb :"cities/index"
end

get '/cities/:city_id' do
  @city = City.find(params[:city_id])
  @establishments = @city.establishments.sort_by { |establishment| establishment.category }
  erb :"cities/show"
end
