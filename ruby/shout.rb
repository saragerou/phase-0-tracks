#module Shout

#  def self.yell_angrily(words)
#    words + "!!!" + " :("
#  end

#  def self.yell_happily(words)
#    words + "!" + " :D"
#  end
#end

#p Shout.yell_angrily("How dare you")
#p Shout.yell_happily("I'm so glad to see you")

module Shout
  
  def yell(reaction)
    puts "I can't believe you#{reaction}"
  end

  def cry(reaction)
    puts "These tears are real#{reaction}"
  end

end

class Angrily
  include Shout
end

class Happily
  include Shout
end

angrily = Angrily.new
angrily.yell("!!!" + " :(")

happily = Happily.new
happily.yell("!" + " :D")

angrily = Angrily.new
angrily.cry("!!!" + " :(")

happily = Happily.new
happily.cry("!" + " :D")