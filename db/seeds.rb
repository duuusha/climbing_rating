require 'json'

country_file_name = File.join(Rails.root, 'public', 'countries.json')
state_file_name = File.join(Rails.root, 'public', 'states.json')
city_file_name = File.join(Rails.root, 'public', 'cities.json')
country_file = File.read(country_file_name)
state_file = File.read(state_file_name)
city_file = File.read(city_file_name)
country_data_hash = JSON.parse(country_file)
state_data_hash = JSON.parse(state_file)
city_data_hash = JSON.parse(city_file)

# country_data_hash.each do |element|
#   element[1].each do |country|
#     @country = Country.new
#     @country.id = country['id']
#     @country.name = country['name']
#     @country.save!
#   end
# end

# state_data_hash.each do |element|
#   element[1].each do |state|
#     @state = State.new
#     @state.id = state['id']
#     @state.country_id = state['country_id']
#     @state.name = state['name']
#     @state.save!
#   end
# end

# city_data_hash.each do |element|
#   element[1].each do |city|
#     @city = City.new
#     @city.id = city['id']
#     @city.state_id = city['state_id']
#     @city.name = city['name']
#     if @city.valid?
#       @city.save
#     end
#   end
# end