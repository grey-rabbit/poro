############################################
#
# Poroguramu Porojecto ... Command line that takes a file witch countains
# the program and with known syntaxe and the it pareses it 
# so it could tell you witch task to do ...
#
############################################

require "poro/version"

module Poro
  #core method
  def self.poro(file)
    begin
      poro = File.open(file).readlines
    rescue 
      puts "-- Usage: Poro yourprogram.txt"
      exit
    end
    mytime = "#{Time.new.hour}:#{Time.new.min}"
    poro = poro.reject { |l| l.include?("#") }
    poro.each do |it|
      t1, t2, tasks = it.chomp.split('-')
      if t1 < mytime && t2 > mytime
        puts "Now it is: #{mytime} ,and it is time to: #{tasks}"
      end
    end
  end
############################################
# calling main method : 
end
puts "my version: " + Poro::VERSION
# Poro.poro(ARGV[0])
