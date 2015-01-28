class CreateQuestions < ActiveRecord::Migration
  def change
    create_table(:questions) do |t|
      t.column(:the_question, :string)

      t.timestamps
    end

  end
end
