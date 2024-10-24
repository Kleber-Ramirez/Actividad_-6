class CreateCategoria < ActiveRecord::Migration[7.2]
  def change
    create_table :categoria do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
