class AddImageAndLinkToNews < ActiveRecord::Migration[8.1]
  def change
    add_column :news, :image, :string
    add_column :news, :link, :string
  end
end
