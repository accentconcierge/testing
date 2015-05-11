class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
    	t.string :name
    	t.string :email
    	t.string :phone
    	t.string :address
    	t.string :status
      t.timestamps null: false
    end
  end
end
