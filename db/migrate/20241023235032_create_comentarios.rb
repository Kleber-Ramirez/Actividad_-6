class CreateComentarios < ActiveRecord::Migration[7.2]
  def change
    create_table :comentarios do |t|
      t.text :contenido
      t.references :usuario, null: false, foreign_key: true
      t.references :articulo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
