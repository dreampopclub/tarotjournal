Rails.application.configure do
  config.after_initialize do
    #Pass a list of decks to use in the application
    DECKS = Decks.new(["rider_waite"])
  end
end
