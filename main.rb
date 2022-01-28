require './classes/app'

def main
  app = App.new
  app.run
end

def welcome
  puts 'Welcome to your Catalog of things!'
  puts ' '
end

welcome
main
