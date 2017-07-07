require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/defination')
require('pry')

get('/') do
  erb(:index)
end
# the homepage which renders the index template

get('/words') do
  @words = Word.all
  erb(:words)
end
# shows you all the words present as we call the .all method here

get('/words/new') do
  erb(:word_form)
end
# renders a form that querry the user to input new words

post('/words') do
  word = params.fetch('word')
  Word.new(word).save
  @words = Word.all
  erb(:success)
end
# the first word variable is from what we fetch from the id in the form
# the second word variable is what we assign a class.new function to add a new
# word in our array then we save it
# simple
get('/words/:id') do
  @word = Word.find(params.fetch('id').to_i)
  # binding.pry
  erb(:word_detail)
end
#
get('/definations/:id') do
  @defination = Defination.find(params.fetch('id').to_i)
  erb(:defination)
end

get('/words/:id/definations/new') do
  @word = Word.find(params.fetch('id').to_i)
  erb(:word_defination_form)
end

post('/definations') do
  defination = params.fetch('defination')
  @defination = Defination.new(defination)
  @defination.save
  @word = Word.find(params.fetch('word_id').to_i)
  @word.add_def(defination)
  erb(:success)
end
