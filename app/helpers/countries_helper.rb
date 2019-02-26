module CountriesHelper
  def format_country_name(name)
    name.upcase
  end

  def image_for(country)
    if country.image_file_name.blank?
      image_tag 'russia.png', width: 16
    else
      image_tag country.image_file_name, width: 16
    end
  end
end
