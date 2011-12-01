class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.string :organization
      t.string :division
      t.string :address
      t.string :city
      t.text :description
      t.text :background

      t.timestamps
    end
  end
end
