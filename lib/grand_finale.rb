require_relative 'airport'
require_relative 'plane'


babylon5 = Airport.new
magnificent_six = []

6.times {magnificent_six << Plane.new}

until babylon5.hangar.count == 6
  	magnificent_six.each do |our_hero|
  		babylon5.bring_er_in(our_hero) if our_hero.status == "flying"
  		puts "This is #{our_hero} reporting. I've hit some bad weather, chaps. I'm taking another pass." if our_hero.status == "flying"
  	end
end
puts ""

magnificent_six.each_with_index { |our_hero, hangar| puts "#{our_hero}, reporting in from Hangar #{hangar + 1}." if our_hero.status == "landed"}

puts ""

until babylon5.hangar.count == 0
  	magnificent_six.each do |our_hero|
  		babylon5.banish(our_hero) if our_hero.status == "landed"
  		puts "This is #{our_hero} reporting. It looks ugly up there, fellas. I'll wait for the next launch window." if our_hero.status == "landed"
  	end
end

puts ""

magnificent_six.each { |our_hero| puts "Tally ho chaps! Chocks away! I'm off to blast my arch-nemesis, Red-#{our_hero} out of the sky!" if our_hero.status == "flying"}

