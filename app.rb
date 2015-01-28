require("bundler/setup")
Bundler.require(:default, :development)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @surveys = Survey.all()
  erb(:index)
end

post('/surveys') do
  survey_name = params.fetch("survey_name")
  @survey = Survey.create({ :survey_name => survey_name })
  @surveys = Survey.all()
  erb(:index)
end

get('/questions') do
  @questions = Question.all()
  erb(:surveys)
end

post('/questions') do
  question_var = params.fetch("the_question")
  survey_id = params.fetch("survey_id")
  @question = Question.create({ :the_question => question_var, :survey_id => survey_id })
  redirect("/survey/#{survey_id}")
end

get('/survey/:id') do
  @survey = Survey.find(params.fetch("id"))
  erb(:surveys)
end

post('/survey/:id') do
  @survey = Survey.find(params.fetch("id"))
  @survey.delete()
  @surveys = Survey.all()
  redirect('/')
end

post('/question/:id') do
  @question = Question.find(params.fetch("id"))
  @question.delete()
  @questions = Question.all()
  erb(:submission)
end
