class CreateGardians < ActiveRecord::Migration
  def change
    create_table :gardians do |t|
      t.string :name
      t.string :contact
      t.string :email
      t.text :address
      t.references :admission, index: true

      t.timestamps
    end
  end
end
