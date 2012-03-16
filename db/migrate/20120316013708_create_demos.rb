class CreateDemos < ActiveRecord::Migration
  def change
    create_table :demos do |t|
      t.text :description
      t.string :author
      t.integer :page_view
      t.string :link

      t.timestamps
    end
  end
end
