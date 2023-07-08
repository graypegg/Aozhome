class CreateThings < ActiveRecord::Migration[7.0]
  def change
    create_table :things do |t|

      t.timestamps
      t.string :name
      t.string :description
      t.integer :quantity, default: 0
      t.integer :price, default: 0
      t.string :currency
      t.integer :weight, default: 0
      t.date :purchase_date

      t.belongs_to :manufacturer
      t.belongs_to :user
    end
  end
end
