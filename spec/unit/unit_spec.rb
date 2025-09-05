require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(
      title: "The Great Gatsby",
      author: "F. Scott Fitzgerald",
      price: 9.99,
      date_published: "1925-04-10"
    )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a date_published' do
    subject.date_published = nil
    expect(subject).to_not be_valid
  end
end
