class Add < ActiveRecord::Migration[5.2]
  def change
	 add_column :encryptas, :mensaje, :string
  end
end
