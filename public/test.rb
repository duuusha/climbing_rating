require 'json'

Country.delete_all

File.open("countries.json") do |countries|
  data = []
  countries.read.each_line do |country|
    @item = JSON.parse(country)
    object = {
        "id":        @item["id"],
        "name":     @item["name"]
    }
    data << object
  end
  Country.create!(data)
end