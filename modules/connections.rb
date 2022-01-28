require_relative '../classes/label'
require 'json'

module Connections
  def add_label_info(item)
    print 'What is the label of the item?'
    print 'title:'
    title = gets.chomp

    print 'color:'
    color = gets.chomp

    label = Label.new(title, color)

    label.add_item(item)

    @labels << label
  end
end
