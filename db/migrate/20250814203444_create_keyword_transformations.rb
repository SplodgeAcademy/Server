class CreateKeywordTransformations < ActiveRecord::Migration[8.0]
  def change
    create_table :keyword_transformations do |t|
      t.string :question
      t.string :answer
      t.string :keyword
      t.string :prompt

      t.timestamps
    end
  end
end
