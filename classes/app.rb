class App
  include BookOption
  include LabelOption

  def initialize
    @books = []
    @labels = []
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
    when 5
      display_label
    when 7
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
