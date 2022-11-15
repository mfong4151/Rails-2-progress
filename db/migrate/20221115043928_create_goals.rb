class CreateGoals < ActiveRecord::Migration[7.0]
  def change
    create_table :goals do |t|
      t.string :name, null:false
      t.string :details, null:false
      t.boolean :status, null:false
      t.references :user, null:false, foreign_key:{to_table: :users}
      t.timestamps
    end
  end
end
