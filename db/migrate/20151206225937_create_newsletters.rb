class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :name
      t.string :author
      t.string :subscribe_link
      t.text :description

      t.timestamps null: false
    end
  end
end
