require("spec_buddy")

describe(Response) do
  it("tells which question the response belongs to") do
    question = Question.create({ :the_question => "What did you eat this morning?" })
    response = Response.create({ :response => "Your eggs", :questions_id => question.id() })
    expect(response.question()).to(eq(question))
  end
end
