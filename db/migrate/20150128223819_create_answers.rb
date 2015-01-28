class CreateAnswers < ActiveRecord::Migration
  def change
    create_table(:responses) do |t|
      t.column(:response, :string)
      t.column(:questions_id, :integer)
    end

  end
end
