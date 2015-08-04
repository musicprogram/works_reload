class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.datetime :date_time
      t.references :campaign, index: true, foreign_key: true
      t.references :brand, index: true, foreign_key: true
      t.references :country, index: true, foreign_key: true
      t.references :activity, index: true, foreign_key: true
      t.datetime :end_time
      t.float :sum_time

      t.timestamps null: false
    end
  end
end
