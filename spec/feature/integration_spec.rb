require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid title' do
        visit new_book_path
        fill_in "Title", with: "The Great Gatsby"
        fill_in "Author", with: "F. Scott Fitzgerald"
        fill_in "Price", with: "10.99"
        select "2023", from: "book_date_published_1i"
        select "August", from: "book_date_published_2i"
        select "29", from: "book_date_published_3i"
        click_on "Create Book"
        expect(page).to have_content("Book was successfully created.")
    end

    scenario 'invalid title' do
        visit new_book_path
        fill_in "Title", with: ''
        click_on 'Create Book'
        expect(page).to have_content("Title can't be blank")
    end

  scenario 'invalid author' do
    visit new_book_path
    fill_in 'Author', with: ''
    click_on 'Create Book'
    expect(page).to have_content("Author can't be blank")
  end

  scenario 'invalid price' do
    visit new_book_path
    fill_in 'Price', with: ''
    click_on 'Create Book'
    expect(page).to have_content("Price can't be blank")
  end

  scenario 'invalid date_published' do
    visit new_book_path
    select '', from: "book_date_published_1i"
    select '', from: "book_date_published_2i"
    select '', from: "book_date_published_3i"
    click_on 'Create Book'
    expect(page).to have_content("Date published can't be blank")
  end
end