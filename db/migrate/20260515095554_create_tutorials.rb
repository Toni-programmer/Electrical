class CreateTutorials < ActiveRecord::Migration[8.1]
  def change
    create_table :tutorials do |t|
      t.string :title
      t.string :slug
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
