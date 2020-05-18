class CreateBeds < ActiveRecord::Migration[6.0]
  def change
    create_table :beds do |t|
      t.string :category
      t.references :hospital_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
