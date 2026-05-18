class CreateQuotes < ActiveRecord::Migration[8.1]
  def change
    create_table :quotes do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :message
      t.string :status

      t.timestamps
    end
  end
end
