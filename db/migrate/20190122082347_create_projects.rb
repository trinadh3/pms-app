class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :Project_name
      t.text :Description
      t.string :Project_Type
      t.integer :user_id
      t.integer :task_id

      t.timestamps
    end
  end
end
