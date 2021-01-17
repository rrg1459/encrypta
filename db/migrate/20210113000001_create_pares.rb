class CreatePares < ActiveRecord::Migration[5.2]
  def change
    create_table :pares do |t|
      t.string :nombre, null: false
      t.string :imagen

      t.datetime :created_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :updated_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
