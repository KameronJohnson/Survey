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
