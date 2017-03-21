class CreateHappenings < ActiveRecord::Migration[5.0]
  def change
    create_table :happenings do |t|
      t.integer :year
      t.text :body
      t.references :day, foreign_key: true

      t.timestamps
    end
  end
end
