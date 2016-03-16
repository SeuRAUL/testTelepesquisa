class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
    	t.string 	:name
    	t.float 	:price
    	t.integer 	:quantity
    	
    	t.references :stock

      t.timestamps
    end
  end
end
