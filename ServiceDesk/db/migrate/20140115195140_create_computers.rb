class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :model

      t.timestamps
    end
  end
end
