require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: "The Great Gatsby"
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content("The Great Gatsby")
    end

    scenario 'invalid inputs' do
        visit new_book_path
        fill_in "book[title]", with: ''
        click_on 'Create Book'
        expect(page).to have_content("Title can't be blank")
        expect(page).to have_current_path(books_path)
    end
end