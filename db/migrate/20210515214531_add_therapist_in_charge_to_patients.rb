class AddTherapistInChargeToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :therapist_in_charge, :string
  end
end
