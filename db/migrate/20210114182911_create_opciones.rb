class CreateOpciones < ActiveRecord::Migration[5.2]
  def change
    create_table :opciones do |t|
      t.integer :juliano, null: false
      t.string :resultado, null: false
      t.integer :porcentaje, null: false
      t.integer :inversion, null: false
      t.string :tipo, null: false
      t.integer :par_id, null: false
      t.integer :reloj_id, null: false
      t.integer :canal_id, null: false

      t.datetime :created_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :updated_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
    end

    add_foreign_key :opciones, :pares,   on_delete: :cascade, column: :par_id
    add_foreign_key :opciones, :relojes, on_delete: :cascade, column: :reloj_id
    add_foreign_key :opciones, :canales, on_delete: :cascade, column: :canal_id

  end
end
