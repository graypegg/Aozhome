class CreateThings < ActiveRecord::Migration[7.0]
  def change
    create_table :things do |t|

      t.timestamps
      t.string :name
      t.string :description
      t.integer :quantity
      t.integer :price
      t.string :currency
      t.integer :weight
      t.date :purchase_date

      t.belongs_to :manufacturer
      t.belongs_to :user
    end
  end
end
