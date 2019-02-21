class AddFlagToCountries < ActiveRecord::Migration[6.0]
  def change
    add_column :countries, :image_file_name, :string, default: ""
  end
end
