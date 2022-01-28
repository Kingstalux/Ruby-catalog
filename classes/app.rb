require_relative '../modules/book_option'
require_relative '../modules/label_option'
require_relative '../manageMusic'

class App
  include BookOption
  include LabelOption

  def initialize
    @books = []
    @labels = []
    initialize_musics
    initialize_genre
  end

  def menu
    puts 'Welcome to your Catalog of things!'
    puts "\n"
    puts 'Please choose an option by entering a number: '

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
    when 2
      list_musics
    when 3
      list_genre
    when 4
      display_label
    when 5
      create_book
    when 6
      add_music
    when 7
      save_albums
      save_genre
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
