class CreateApartaments < ActiveRecord::Migration[6.1]
  def change
    create_table :apartaments do |t|
      t.integer :number
      t.references :buildings, null: false, foreign_key: true

      t.timestamps
    end
  end
end
