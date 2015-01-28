require("spec_buddy")

describe(Question) do
  it("tells which survey it belongs to") do
    survey = Survey.create({:survey_name => "sun survey"})
    question = Question.create({:the_question => "will the sun rise?", :survey_id => survey.id})
    expect(question.survey()).to(eq(survey))
  end
end
