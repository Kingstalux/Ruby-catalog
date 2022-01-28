require_relative './spec_helper'
require 'date'

describe Book do
  context 'testing book class' do
    before(:all) do
      @book = Book.new('Phone', 'bad', '2025/12/07')
      @item = Item.new('2025/12/07')
    end

    it 'book is instance of Book' do
      expect(@book).to be_instance_of(Book)
    end

    it 'book is instance of Item' do
      expect(@book).to be_kind_of(Item)
    end

    it 'correct publisher / cover state / published date' do
      expect(@book.publisher).to eql 'Phone'
      expect(@book.cover_state).to eql 'bad'
      expect(@book.published_date).to eql Date.parse('2025/12/07')
    end

    it 'can_be_archived? method works accordingly' do
      expect(@book.can_be_archived?).to be true
    end
  end
end
