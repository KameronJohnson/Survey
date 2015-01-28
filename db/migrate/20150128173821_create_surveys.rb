class CreateSurveys < ActiveRecord::Migration
  def change
    create_table(:surveys) do |t|
      t.column(:survey_name, :string)
      t.column(:question_id, :integer)

      t.timestamps
    end
  end
end
