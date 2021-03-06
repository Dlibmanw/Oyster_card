require_relative 'journey'
class Oystercard
  attr_reader :balance, :entry_station, :journey_history, :exit_station
  Limit = 90
  Minimum_fare = 1
  def initialize(balance = 10)
    @balance = balance
    @status = false
    @entry_station = nil
    @journey_history = []
  end

  def top_up(value)
    fail 'Top up limit exceeded' if value + balance > Limit
    @balance += value
  end

  def touch_in(station)
    fail "Balance too low" if @balance < Minimum_fare
    #@status = true
    @entry_station = station

  end

  def in_journey?
    !!@entry_station
  end

  def touch_out(station)
    @exit_station = station
    #@journey_history.push({:entry_station => entry_station, :exit_station => exit_station}) #problem with pushing name of entry station into hash
    @journey_history.push(Journey.new(@entry_station, @exit_station)) #problem with pushing name of entry station into hash
    deduct(Minimum_fare)
    @entry_station = nil
    puts station
    #@status = false
  end

  private

  def deduct(fair)
    @balance = @balance - fair
  end

end
