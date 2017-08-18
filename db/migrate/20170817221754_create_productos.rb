class CreateProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.belongs_to :marca, index:true
      t.string :descripcion
      t.float :precio

      t.timestamps
    end
  end
end
