class Event


  attr_accessor :start_date, :duration, :title, :attendees
  @attendees = []


  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration.to_i
    @title = title.to_s
    @attendees = attendees
  end


  def postpone_24h
    return start_date + 24*60*60
  end


  def end_date
    return start_date + duration*60
  end


  def is_past?
    return start_date < Time.now
  end


  def is_future?
    return start_date > Time.now
  end


  def is_soon?
    return start_date > Time.now && start_date < Time.now + 30*60
  end


  def to_s
    puts "> Titre : #{title}"
    puts "> Date de début : #{start_date}"
    puts "> Durée : #{duration} minutes"
    puts "> Invités : #{@attendees.map{ |i| i.delete(",;") }.join(", ")}"
  end

end

# binding.pry