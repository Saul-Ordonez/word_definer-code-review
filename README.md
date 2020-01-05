# Week 9 Project (Word Definer)

#### Application lets users add words with made-up definitions to a list. Also allows for editing of words and definitions.

#### By **Saul Ordonez**

## Description

This Ruby web application takes in user input to save words or phrases to a database and attach definitions to each word. The program also lets the users search by words created and allows the user to edit words and definitions they have already saved.

## Specs
HTTP | Route | CRUD Functionality | Description
--- | --- | --- |---
GET | /words | READ | Gets a list of words
GET | /words/:id | READ | Looks at the details page for one word
POST | /words | CREATE | Adds a new word to the list of already saved words (if any)
PATCH | /words/:id | UPDATE | Updates a word
DELETE | /words/:id | DELETE | Deletes a word from the list
GET | /words/new | READ | Goes to the page to add a new word to the list
GET | /words/:id/edit | READ | Goes to the page to edit a word
GET | /words/:id/definitions/:definition_id | READ | Looks at the details page for one definition
POST | /words/:id/definitions/:definition_id | CREATE | Adds a new definition to the list of already saved definitions (if any)
PATCH | /words/:id/definitions/:definition_id | UPDATE | Updates a definition
DELETE | /words/:id/definitions/:definition_id | DELETE | Deletes a definition from the list

## Setup/Installation Requirements

* Clone GitHub project repository onto desktop
* You will need to have ruby installed on your computer
* Run bundle in your terminal to install appropriate Ruby Gems
* run $ **ruby app.rb** in your terminal
* internet service required when cloning project repository onto local computer.
* You can find this project deployed on Heroku @ [here](https://infinite-tundra-66704.herokuapp.com/)

## Known Bugs

There are no known bugs at this time but may be subject to change.

## Support and contact details

If there are any issues or bugs the developer may not be aware of please contact at:

#### * sauleordonez@gmail.com
#### * (503)-382-9034

## Technologies Used

* Ruby
* Ruby Gem 'sinatra'
* Ruby Gem 'sinatra-contrib'
* Ruby Gem 'rspec'
* Ruby Gem 'pry'
* Ruby Gem 'capybara'
* Mac Terminal to run project

### License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

Copyright (c) 2020 **_Saul Ordonez_**
