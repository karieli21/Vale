class CreateSaleProductos < ActiveRecord::Migration
  def change
    create_table :sale_productos do |t|
      t.references :sale, index: true, foreign_key: true
      t.references :producto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
