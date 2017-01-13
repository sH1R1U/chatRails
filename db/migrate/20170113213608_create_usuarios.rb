class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :email
      t.string :password
      t.boolean :conectado
    end
  end
end
