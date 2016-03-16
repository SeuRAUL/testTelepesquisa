class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string  :typeOf
      t.float   :value

      t.timestamps
    end
  end
end
