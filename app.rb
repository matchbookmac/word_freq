require('sinatra')
require('sinatra/reloader')
require('./lib/word_freq')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/frequency') do
  @word = params.fetch('word')
  @sentence = params.fetch('sentence')
  @frequency = @word.word_freq(@sentence)
  erb(:frequency)
end
