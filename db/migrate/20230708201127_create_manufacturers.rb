class CreateManufacturers < ActiveRecord::Migration[7.0]
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :description
      t.string :website
      t.string :email

      t.timestamps
    end
  end
end
