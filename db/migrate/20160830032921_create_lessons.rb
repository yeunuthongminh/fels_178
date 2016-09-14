class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.references :user, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.integer :status, default: 0
      t.integer :score, default: 0
      t.datetime :started_at

      t.timestamps
    end
  end
end
