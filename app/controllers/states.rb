get '/states' do
  @states = State.all
  erb :"states/index"
end

get '/states/:state_name' do
  @state = State.find_by(name: params[:state_name])
  @cities = @state.cities.sort_by { |city| city.name }
  erb :"states/show"
end
