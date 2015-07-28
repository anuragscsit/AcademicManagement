class CreateAdmissions < ActiveRecord::Migration
  def change
    create_table :admissions do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :father_name
      t.string :mother_name
      t.string :date_of_birth
      t.integer :age
      t.string :contact
      t.string :email

      t.timestamps
    end
  end
end
