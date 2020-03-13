class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :description
      t.integer :category
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
