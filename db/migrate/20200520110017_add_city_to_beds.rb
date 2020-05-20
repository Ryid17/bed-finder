class AddCityToBeds < ActiveRecord::Migration[6.0]
  def change
    add_column :beds, :city, :string
  end
end
