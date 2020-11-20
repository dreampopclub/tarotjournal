Rails.application.configure do
  config.after_initialize do
    #Find all modules in models/decks
    DECKLIST = Decks.constants
    #Build hash including all decks {"deck_name": [Card, Card]}
    DECKS = DECKLIST.each_with_object({}) do |deck, obj|
      obj[deck.to_s.underscore] =  ("Decks::" + deck.to_s).constantize.build
    end
  end
end
