class CreateMultipleChoices < ActiveRecord::Migration[8.0]
  def change
    create_table :multiple_choices do |t|
      t.string :question
      t.string :answer
      t.string :a
      t.string :b
      t.string :c
      t.string :d

      t.timestamps
    end
  end
end
