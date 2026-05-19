class AddFieldsToQuotes < ActiveRecord::Migration[8.1]
  def change
    add_column :quotes, :provincia, :string
    add_column :quotes, :ciudad, :string
    add_column :quotes, :codigo_postal, :string
    add_column :quotes, :titulo, :string
    add_column :quotes, :suministro_electrico, :string
    add_column :quotes, :tipo_alimentacion, :string
    add_column :quotes, :tipo_vivienda, :string
    add_column :quotes, :tipo_vivienda_otro, :text
    add_column :quotes, :superficie, :string
    add_column :quotes, :puntos_de_luz, :string
    add_column :quotes, :tipo_reforma, :string
    add_column :quotes, :tipo_reforma_otro, :text
  end
end
