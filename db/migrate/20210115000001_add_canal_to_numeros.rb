class AddCanalToNumeros < ActiveRecord::Migration[5.2]
  def change

    change_table :numeros do |t|
      t.integer :canal_id, null: false
    end

    add_foreign_key :numeros, :canales, on_delete: :cascade, column: :canal_id

  end
end
