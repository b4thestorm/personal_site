class CreateLinkedins < ActiveRecord::Migration
  def change
    create_table :linkedins do |t|
      t.string :name
      t.text :title
      t.text :experience
      t.text :summary
      t.text :education
      t.string :skills

      t.timestamps null: false
    end
  end
end
