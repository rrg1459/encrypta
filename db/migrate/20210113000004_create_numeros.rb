class CreateNumeros < ActiveRecord::Migration[5.2]
  def change
    create_table :numeros do |t|
      t.integer :inversion, null: false
      t.integer :fondo, null: false
      t.integer :porcentaje, null: false
      t.integer :canal_id, null: false

      t.datetime :created_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :updated_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end

    add_foreign_key :numeros, :canales, column: :canal_id

  end
end
