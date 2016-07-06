require('sinatra')
require('sinatra/reloader')
require('./lib/tamagotchi')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

post("/create") do
  tamagotchi = params.fetch("my_tamagotchi")
  @my_tamagotchi = Tamagotchi.new(tamagotchi)
  @my_tamagotchi.save()
  erb(:created_tamagotchi)
end

get("/create/:action") do
  action = params['action']
  my_tamas = Tamagotchi.all()
  @my_tamagotchi = my_tamas[0]
  if action == "add_food"
    @my_tamagotchi.add_food()
  end
  if action == "add_sleep"
    @my_tamagotchi.add_sleep()
  end
  if action == "add_activity"
    @my_tamagotchi.add_activity()
  end
  erb(:created_tamagotchi)
end
