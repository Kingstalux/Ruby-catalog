module LabelOption
  def display_label
    if @labels.length.zero?
      puts 'No labels registered yet!'
    else

      puts "List of all Labels: \n"
      @labels.each_with_index do |label, index|
        print "#{index + 1} book :"
        print "title: #{label.title}"
        print '  '
        puts "color: #{label.color}"
        print "\n"
      end
    end
  end
end
