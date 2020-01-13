require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('create a word path', {:type => :feature}) do
  it('creates an word and then goes to the word definition page') do
    word = Word.new("Hello", nil)
    word.save
    visit("/words/#{word.id}/definitions/new")
    fill_in('definition', :with => 'How are you?')
    click_on('Go!')
    expect(page).to have_content('How are you?')
  end
end

describe('edit a word', {:type => :feature}) do
  it('creates an word and then edits it') do
    word = Word.new("Hello", nil)
    word.save
    visit("/words/#{word.id}/edit")
    fill_in('name', :with => 'Goodbye')
    click_on('Update')
    expect(page).to have_content('Goodbye')
  end
end

describe('create a definition', {:type => :feature}) do
  it('creates a definition for a word') do
    word = Word.new("Hello", nil)
    word.save
    visit("/words/#{word.id}/definitions/new")
    fill_in('definition', :with => 'How are you?')
    click_on('Go!')
    expect(page).to have_content('How are you?')
  end
end
