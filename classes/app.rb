require_relative '../modules/book_option'
require_relative '../modules/label_option'
require_relative '../manage_music'
require_relative '../modules/book_storage'
require_relative '../modules/label_storage'
require 'json'

def options
  Dir.mkdir 'json' unless Dir.exist? 'json'
  puts ' '
  puts 'Please choose an option by entering a number: '
  puts ' '
  puts '1: List all books'
  puts '2: List all music albums'
  puts '3: List all genres'
  puts '4: List all labels'
  puts '5: Add a book'
  puts '6: Add a music album'
  puts '7: Exit app'
  print "\nEnter option from above list: "
end

def homepage1(input)
  case input
  when 1
    display_books
  when 2
    list_musics
  when 3
    list_genre
  when 4
    display_label
  end
end

def homepage2(input)
  case input
  when 5
    create_book
  when 6
    add_music
  when 7
    save_albums
    save_genre
    puts 'Thanks for using our library app , hope to see you soon ! '
    exit
  end
end

class App
  include BookOption
  include LabelOption
  include LabelStorage
  include BookStorage

  def initialize
    @books = []
    @labels = []
    initialize_musics
    initialize_genre
  end

  def load_data
    read_books
    read_labels
  end

  def menu
    options
    gets.chomp.to_i
  end

  def homepage(input)
    homepage1(input)
    homepage2(input)
  end

  def run
    loop do
      homepage(menu)
    end
  end
end
