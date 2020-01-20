require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('create a word path', {:type => :feature}) do
  it('creates a word and then goes to the word page') do
    visit('/words')
    click_on('Add a new word')
    fill_in('word_name', :with => 'Hello')
    click_on('Go!')
    expect(page).to have_content('Hello')
  end
end

describe('edit a word', {:type => :feature}) do
  it('creates a word and then edits it') do
    word = Word.new("Hello", nil)
    word.save
    visit("/words/#{word.id}/edit")
    fill_in('word_name', :with => 'Goodbye')
    click_on('Update')
    expect(page).to have_content('Goodbye')
  end
end

describe('create a definition', {:type => :feature}) do
  it('creates a definition for a word') do
    word = Word.new("Hello", nil)
    word.save
    definition = Definition.new('How are you?', nil, nil)
    definition.save
    visit("/words/#{word.id}")
    fill_in('definition_content', :with => 'How are you?')
    click_on('Add definition')
    expect(page).to have_content('How are you?')
  end
end
