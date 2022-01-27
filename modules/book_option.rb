require_relative '../classes/label'
require_relative '../connections'
require_relative '../classes/book'

module BookOption
  include Connections

  def create_book
    print 'Published date:'
    published_date = gets.chomp

    print 'Publisher name:'
    publisher = gets.chomp

    print 'Cover State:'
    cover_state = gets.chomp
    created_book = Book.new(publisher, cover_state, published_date)

    add_label_info(created_book)
    add_author_info(created_book)
    add_genre_info(created_book)

    @books << created_book
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
        print "publish date: #{book.published_date}"
        print "cover state: #{book.cover_state}"
      end

    end
  end
end
