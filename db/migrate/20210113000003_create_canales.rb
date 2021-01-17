class CreateCanales < ActiveRecord::Migration[5.2]
  def change
    create_table :canales do |t|
      t.string :nombre, null: false

      t.datetime :created_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
      t.datetime :updated_at, null: false, default: -> { 'CURRENT_TIMESTAMP' }
    end
  end
end
