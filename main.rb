require './classes/app'

def main
  app = App.new
  app.load_data
  app.run
end

def welcome
  puts 'Welcome to your Catalog of things!'
end

welcome
main
