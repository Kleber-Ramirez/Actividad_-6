class CreateArticulos < ActiveRecord::Migration[7.2]
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.text :contenido
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
