class ChangeCityToWard < ActiveRecord::Migration[6.0]
  def change
     rename_column :beds, :city, :ward
  end
end
