class AddColumnsToAdmissions < ActiveRecord::Migration
  def change
    add_column :admissions, :college_name, :string
    add_column :admissions, :university_name, :string
    add_column :admissions, :qualification, :string
    add_column :admissions, :passong_year, :integer
  end
end
