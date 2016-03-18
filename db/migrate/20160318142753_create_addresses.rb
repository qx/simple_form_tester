class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :city, index: true, foreign_key: true
      t.references :district, index: true, foreign_key: true
      t.references :province, index: true, foreign_key: true
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
