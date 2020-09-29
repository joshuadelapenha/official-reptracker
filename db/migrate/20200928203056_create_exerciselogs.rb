class CreateExerciselogs < ActiveRecord::Migration[6.0]
  def change
    create_table :exerciselogs do |t|
      t.integer :reps
      t.integer :weight
      t.belongs_to :lifter, null: false, foreign_key: true
      t.belongs_to :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
