require_relative '../classes/label'
require_relative './connections'
require_relative '../classes/book'
require_relative './label_option'
require_relative './book_storage'
require_relative './label_storage'
require 'json'

module BookOption
  include Connections
  include LabelStorage
  include BookStorage
  include LabelOption
  def create_book
    print 'Published date:'
    published_date = gets.chomp

    print 'Publisher name:'
    publisher = gets.chomp

    print 'Cover State:'
    cover_state = gets.chomp
    created_book = Book.new(publisher, cover_state, published_date)

    add_label_info(created_book)

    @books << created_book
    save_book
    save_label
    puts 'Book successfully added ! '
  end

  def display_books
    if @books.length.zero?
      puts 'No books added yet !'
    else
      puts 'List of all your books : \n'
      @books.each_with_index do |book, index|
        print "#{index + 1} book :"
        print "publisher: #{book.publisher}"
        print ' '
        print "publish date: #{book.published_date}"
        print ' '
        print "cover state: #{book.cover_state}"
        puts "\n"
      end

    end
  end
end
