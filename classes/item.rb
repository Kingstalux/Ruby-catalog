require 'date'
class Item
  attr_writer :genre, :source, :author, :label
  attr_reader :published_date, :archived, :id

  def initialize(published_date, archived: false)
    @id = Random.rand(1...1000)
    @published_date = Date.parse(published_date)
    @archived = archived
  end

  def can_be_archived?
    DateTime.now.year - @published_date.year > 10
  end

  def move_to_archive
    @archived = can_be_archived?
  end
end
puts DateTime.now
