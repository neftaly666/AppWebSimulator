class CreateComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :components do |t|
      t.string :equipo
      t.integer :cantidad
      t.integer :tiempo
      t.integer :potencia

      t.timestamps
    end
  end
end
