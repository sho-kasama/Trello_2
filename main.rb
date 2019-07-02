require 'trello'
require 'pry'


def puts_todos
  configure
  cards = get_cards

  puts '----------------------'
  cards.each do |card|
      puts card.name
  end
  puts '----------------------'

end

def configure
  Trello.configure do |config|
    config.developer_public_key = '51930a25fd060f80c3cc8122733037df' # The "key" from step 1
    config.member_token = '366610c2792c8c8adbbee8735a8eec086ec063fdc64565bda5d2573f59d9e592' # The token from step 2.
  end
end

def get_cards
  member = Trello::Member.find('shokasama1')
  boards = member.boards
  board = boards.find{ |board| board.name == 'Todolist' }
  list = board.lists[0]
  cards = list.cards
  cards
end

puts_todos