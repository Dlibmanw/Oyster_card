class Journey
  attr_reader :entry_station, :exit_station, :journey_history
  def initialize
    @entry_station = nil
    @exit_station = nil
    @journey_history = []
  end

  def start(entry_station)
    @entry_station = entry_station
  end

  def in_journey?
    !@entry_station.nil?
  end

  def touch_out(exit_station)
    @exit_station = exit_station
    @journey_history << {entry_station: @entry_station, exit_station: @exit_station} #problem with pushing name of entry station into hash
    @entry_station = nil
  end

  def fined?
    if @entry_station == nil
      true
    elsif @exit_station == nil
      true
    else
      false
    end
  end

end
