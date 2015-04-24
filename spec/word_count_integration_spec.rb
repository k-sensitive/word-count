require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('count page path', {:type => :feature}) do
  it('counts the number of times a word appears in a string') do
    visit('/')
    fill_in('target_word', :with => 'bar')
    fill_in('sentence', :with => 'foo BAR. foobar Foo Bar!')
    click_button('Count')
    expect(page).to have_content(2)
  end
end
