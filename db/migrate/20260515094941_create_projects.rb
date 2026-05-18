class CreateProjects < ActiveRecord::Migration[8.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :slug
      t.text :description
      t.string :image
      t.string :client

      t.timestamps
    end
  end
end
