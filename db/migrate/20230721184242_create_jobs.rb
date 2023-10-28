class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.string :location
      t.string :description
      t.integer :salary

      t.timestamps
    end
  end
end
