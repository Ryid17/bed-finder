class AddAddressToBeds < ActiveRecord::Migration[6.0]
  def change
    add_column :beds, :address, :string
  end
end
