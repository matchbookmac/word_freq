require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('The word_freq path', {:type => :feature}) do
  it('processes the user\'s word and sentence and returns the occurences of the word') do
    visit('/')
    fill_in('word', :with => 'won\'t')
    fill_in('sentence', :with => 'The camel won\'t stop spitting. Won\'t you ask him to stop? Because of his spitting, the dodgers won.')
    click_button('Search')
    expect(page).to have_content('Your word was found 2 times!')
  end
end
