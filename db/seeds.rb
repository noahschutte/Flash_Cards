science_card_array = [
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

linguistics_card_array = [
['What language has the most words?', 'English'],
['What is the first letter on a typewriter?', 'Q'],
['What is the main language in Albania?', 'Tosco'],
['What are the Sun, the Independent and the Guardian?', 'newspapers'],
['What is the longest word in Spanish?', 'superextraordinarissimo'],
['Which is the most spoken language?', 'Chinese'],
['In what language does "obrigado" mean "thank you"?', 'Portuguese'],
['In which shop can you buy books in England?', 'bookshop']
]

sports_and_entertainment_card_array = [
['What is the name of the main airport in Madrid?', 'Barajas'],
['What money do they use in Japan?', 'yen'],
['How many minutes is a round in boxing?', 3],
['How many months have 31 days?', 7],
['What hour do the pubs normally close in England?', 11],
['What is the fastest passenger plane in the world?', 'concorde'],
['How many coloured balls are there in billiards?', 15],
['How many players are there in a basketball team?', 5],
['How many lanes does an olympic swimming pool have?', 8],
['How many squares are there on a chess board?', 64],
['Who starts first in chess?', 'white'],
['How many events are there in the decathlon?', 10],
['How many players are there in a volleyball team?', 6],
['Where are the most expensive seats at a bullfight?', 'shaded']
]

useless_knowlege_card_array = [
['What is the highest score in a gymnastics exercise?', 10],
['Which fast food restaurant was established by Ray Kroc?', 'McDondalds'],
['What do the opposite sides of a dice add up to?', 7],
['What activity other than jumping are kangaroos good at?', 'boxing'],
['How many eyes are there on a pack of 52 cards?', 42],
['How many prongs are there on a fork?', 4],
['Who named a perfume for her fashion shows on the 5th day of the month?', 'Chanel'],
['How many dots are there on two dice?', 42],
['What horoscope sign has a crab?', 'cancer'],
['How many months is the compulsory military service in England?', 0]
]

deck = Deck.create(name: 'Science and Nature')
deck = Deck.create(name: 'Linguistics')
deck = Deck.create(name: 'Sports and Entertainment')
deck = Deck.create(name: 'Useless Knowledge')

arrays = [science_card_array, linguistics_card_array, sports_and_entertainment_card_array, useless_knowlege_card_array]

arrays.each_with_index do |deck, index|
  deck.each do |card|
    Card.create(question: card[0], answer: card[1], deck: index)
  end
end

