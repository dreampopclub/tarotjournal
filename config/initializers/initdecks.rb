DECKLIST = [RiderWaite, Thoth]
Rails.application.configure do
  config.after_initialize do
    DECKLIST.each do |deck|
      deck.build
    end
  end
end
