require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher, cover_state, published_date)
    super(published_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end

  def to_json(json)
    json.generate({
                    date: @published_date,
                    cover_state: @cover_state,
                    publisher: @publisher,
                    title: @label.title,
                    color: @label.color
                  })
  end
end
