class RemovePostalCodeFromPatient < ActiveRecord::Migration[6.0]
  def change
    remove_column :patients, :postal_code, :string
    remove_column :patients, :address, :string
  end
end
