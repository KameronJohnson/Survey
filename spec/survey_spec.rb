require("spec_buddy")

describe(Survey) do
  it { should have_many(:questions) }
end
