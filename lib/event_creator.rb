class EventCreator < Event


  def initialize
    puts "Salut, tu veux créér un évenement ? Cool !"
    puts "Commençons. Quel est le nom de l'évenement ?"
    print "> "
    title = gets.chomp.to_s


    puts "Super. Quand aura-t-il lieu ?"
    print "> "
    start_date = gets.chomp


    puts "Au top. Combien de temps va-t-il durer ? (en minutes)"
    print "> "
    duration = gets.chomp.to_i


    puts "Génial. Qui va participer ? Balance leurs e-mails"
    attendees = gets.chomp.split

    puts "Super, c'est noté, ton événement a été créé !"


    # start_date = start_date_input
    # duration = duration_input
    # title = title_input
    # attendees = attendees_input.split

    event = Event.new(start_date, duration, title, attendees)
    event.to_s
  end


end

# binding.pry