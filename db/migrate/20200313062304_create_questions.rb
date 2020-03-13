class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :description
      t.integer :category, default: 0
      t.integer :status, default: 1

      t.timestamps
    end
  end
end
