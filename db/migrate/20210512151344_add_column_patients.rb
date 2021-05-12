class AddColumnPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :moving_on_bed_id, :integer
  end
end
