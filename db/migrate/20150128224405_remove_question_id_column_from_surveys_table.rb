class RemoveQuestionIdColumnFromSurveysTable < ActiveRecord::Migration
  def change
    remove_column(:surveys, :question_id, :integer)
  end
end
