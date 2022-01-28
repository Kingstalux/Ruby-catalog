require_relative '../classes/book'
require_relative '../classes/label'
require 'json'

module LabelStorage
  def read_labels
    return unless File.exist?('./json/labels.json')

    file = File.read('./json/labels.json')
    file_data = JSON.parse(file)
    file_data.each do |label|
      label_instance = Label.new(label['title'], label['color'])
      @labels.push(label_instance)
    end
  end

  def save_label
    File.write('./json/labels.json', JSON.dump(@labels))
  end
end
