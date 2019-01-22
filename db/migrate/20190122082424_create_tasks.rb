class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :Description
      t.integer :project_id

      t.timestamps
    end
    create_table :projects do |t|
      t.belongs_to :project, index: true
      t.datetime :created_at
      t.timestamps
    end
  end
end
