require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')

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
  xword = Word.new(word)
  xword.save
  erb(:success)
end
# the first word variable is from what we fetch from the id in the form
# the second word variable is what we assign a class.new function to add a new
# word in our array then we save it
# simple
get('words/:id') do
  @word = Word.find(params.fetch('id'))
  erb(:words)
end
