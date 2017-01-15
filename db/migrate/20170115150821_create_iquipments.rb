class CreateIquipments < ActiveRecord::Migration[5.0]
  def change
    create_table :iquipments do |t|
      t.string :equipo
      t.integer :cantidad
      t.float :tiempo
      t.integer :potencia

      t.timestamps
    end
  end
end
