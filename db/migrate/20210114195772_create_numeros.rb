class CreateNumeros < ActiveRecord::Migration[5.2]
  def change
    create_table :numeros do |t|
      t.integer :inversion, null: false
      t.integer :fondo, null: false
      t.integer :porcentaje, null: false

      t.datetime :created_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :updated_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end
  end
end
