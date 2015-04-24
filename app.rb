require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/count') do
  @word = params.fetch('target_word')
  @phrase = params.fetch('sentence')
  @count = @word.word_count(@phrase)
  erb(:count)
end
