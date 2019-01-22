class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :Organization_name
      t.text :Type_of_organization

      t.timestamps
    end
  end
end
