class AddGalleryAndCategoryToProjects < ActiveRecord::Migration[8.1]
  def change
    add_column :projects, :category, :string
    add_column :projects, :gallery, :text
  end
end
