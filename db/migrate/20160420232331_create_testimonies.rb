class CreateTestimonies < ActiveRecord::Migration
  def change
    create_table :testimonies do |t|
      t.string :first_name
      t.string :last_name
      t.text :comments
      t.text :testimony

      t.timestamps null: false
    end
  end
end
