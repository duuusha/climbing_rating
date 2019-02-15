class AddFullNameToCountries < ActiveRecord::Migration[6.0]
  def change
    add_column :countries, :full_name, :string
  end
end
