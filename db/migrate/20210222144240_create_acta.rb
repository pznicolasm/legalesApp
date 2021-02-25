class CreateActa < ActiveRecord::Migration[6.1]
  def change
    create_table :acta do |t|
      t.integer :num_acta
      t.string :dominio
      t.datetime :fecha
      t.string :tipo_vehiculo
      t.string :pertenece_a
      t.string :juzgado
      t.string :articulo
      t.string :autoridad

      t.timestamps
    end
  end
end
