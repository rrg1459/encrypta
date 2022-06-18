class CreateEncryptas < ActiveRecord::Migration[5.2]
  def change
    create_table :encryptas do |t|
      t.integer :inicial
      t.string :clave
      t.string :mensaje

      t.timestamps
    end
  end
end
