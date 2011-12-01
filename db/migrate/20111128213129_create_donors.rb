class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :first
      t.string :last
      t.string :address
      t.string :city
      t.string :facebook
      t.text :description

      t.timestamps
    end
  end
end
