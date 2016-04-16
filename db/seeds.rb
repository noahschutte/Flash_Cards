card_array = [
['The female praying mantis eats the male after she makes love.', 'True'],
['How many colours are there in a rainbow?', 7],
['How many legs does a spider have?', 8],
['What type of elephant has the biggest ears?', 'African'],
['Which nail grows the fastest?', 'Middle'],
['What temperature in Celcius does water boil at?', 100],
['What did Joseph Priesley discover in 1774?', 'Oxygen'],
['Where is the smallest bone in the human body?', 'Ear'],
['What is the only mammal that can not jump?', 'Elephant'],
['What does the roman numeral C represent?', 100],
['What is the smallest type of tree in the world?', 'Bonsai'],
['Which planet is nearest the sun?', 'Mercury'],
['What is the hardest rock?', 'Diamond'],
['How many kilograms does a litre of water weigh?', 1]
]

user = User.create(name: 'bob', email: 'bob@email.com', password: '1234')

deck = Deck.create(name: 'Science and Nature')

card_array.each do |card|
  Card.create(question: card[0], answer: card[1], deck: deck)
end
