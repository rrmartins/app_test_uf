class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.references :cidade

      t.timestamps
    end
    add_index :clientes, :cidade_id
  end
end
