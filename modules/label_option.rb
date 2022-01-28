module LabelOption
  def display_label
    if @labels.length.zero?
      puts "\n"
      puts 'No labels registered yet!'
      puts "\n"
    else

      puts "List of all Labels: \n"
      @labels.each_with_index do |label, index|
        print "#{index + 1}) Label:\n"
        print "title: #{label.title}, color: #{label.color}."
        puts "\n"
        puts '_______________________________________'
        puts "\n"
      end
    end
  end
end
