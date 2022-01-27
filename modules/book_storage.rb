require_relative '../classes/book'
require_relative '../classes/label'
require 'json'

module BookStorage
  def read_books
    return unless File.exist?('./json/books.json')

    file = File.read('./json/books.json')
    file_data = JSON.parse(file)
    file_data.each do |book|
      book_instance = Book.new(book['publisher'], book['cover_state'], book['date'])
      label_instance = Label.new(book['title'], book['color'])
      book_instance.label = label_instance
      @books.push(book_instance)
    end
  end

  def save_book
    File.write('./json/books.json', JSON.dump(@books))
  end
end
