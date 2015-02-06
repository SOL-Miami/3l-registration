class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps null: false
    end
  end
end
