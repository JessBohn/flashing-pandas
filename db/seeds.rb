Deck.destroy_all
User.destroy_all
Card.destroy_all

Deck.create(name: "Ruby")
Deck.create(name: "Pokemon")
Deck.create(name: "Cats")
Deck.create(name: "The Boy Who Lived")
Deck.create(name: "Tacos")
Deck.create(name: "The Room")

User.create(username: "gorejess", password: "Lambch0p")
User.create(username: "tomtom", password: "toms")
User.create(username: "cj", password: "sandalman")
User.create(username: "kimpatton", password: "bearlover")
User.create(username: "mmmmc-gee", password: "itsbrittanybitch")
User.create(username: "Lamburglar", password: "catastrophe")
User.create(username: "Catsby", password: "neverloveddaisy")
User.create(username: "losrojos", password: "cincinnati")
User.create(username: "DBC", password: "igeekallweek")
User.create(username: "isthis", password: "katyperry")

# The Boy Who Lived
potter = Deck.find_by(name: "The Boy Who Lived")
Card.create(question: "What is Harry's birthday?", answer: "July 31", deck: potter)
Card.create(question: "What is Voldemort's real name?", answer: "Tom Riddle", deck: potter)
Card.create(question: "Who is the heir of Slytherin?", answer: "Tom Riddle", deck: potter)
Card.create(question: "What is Hermione's middle name?", answer: "Jean", deck: potter)
Card.create(question: "Who does Harry marry?", answer: "Ginny", deck: potter)
Card.create(question: "Which teacher turns into a cat?", answer: "Professor McGonagall", deck: potter)
Card.create(question: "What is the name of the Malfoy's house elf?", answer: "Dobby", deck: potter)
Card.create(question: "Which Weasley twin dies?", answer: "Fred", deck: potter)
Card.create(question: "What is the name of Harry's owl?", answer: "Hedwig", deck: potter)
Card.create(question: "What gift did Harry receive for his first Hogwarts Christmas?", answer: "invisibility cloak", deck: potter)

