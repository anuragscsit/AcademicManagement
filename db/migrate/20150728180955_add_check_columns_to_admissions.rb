class AddCheckColumnsToAdmissions < ActiveRecord::Migration
  def change
    add_column :admissions, :driving_lecense, :boolean
    add_column :admissions, :voter_id, :boolean
    add_column :admissions, :adhar_id, :boolean
    add_column :admissions, :passport, :boolean
    add_column :admissions, :pan_card, :boolean
  end
end
