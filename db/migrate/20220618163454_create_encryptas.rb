class CreateEncryptas < ActiveRecord::Migration[5.2]
  def change
    create_table :encryptas do |t|
      t.integer :inicial
      t.string :clave

      t.timestamps
    end
  end
end
