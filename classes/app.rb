require_relative '../modules/book_option'
require_relative '../modules/label_option'
require_relative '../modules/book_storage'
require_relative '../modules/label_storage'

class App
  include BookOption
  include LabelOption
  include LabelStorage
  include BookStorage

  def initialize
    @books = []
    @labels = []
  end

  def load_data
    read_books
    read_labels
  end

  def menu
    Dir.mkdir 'json' unless Dir.exist? 'json'
    puts 'Welcome to your Catalog of things!'

    @options = {
      '1': 'List all books',
      '2': 'List all music albums',
      '3': 'List all genres',
      '4': 'List all labels',
      '5': 'Add a book',
      '6': 'Add a music album',
      '7': 'Exit App'
    }

    @options.each do |index, string|
      puts "#{index} - #{string}"
    end
    print "\nEnter option from above list: "
    gets.chomp.to_i
  end

  def homepage(input)
    case input
    when 1
      display_books
    when 4
      display_label
    when 5
      create_book
    when 7
      puts 'Thanks for using our library app , hope to see you soon ! '
      exit
    else
      puts 'please Enter a valid number from 1 to 7'
    end
  end

  def run
    loop do
      homepage(menu)
    end
  end
end
