# NAME_REGEXP = /^[A-Z]{2}\d{3}$/
require 'faker'

class Robot
  attr_accessor :robot, :name

def initialize
  rand_name = Faker::Base.regexify(/^[A-Z]{2}\d{3}$/)
  name = rand_name
  @name = name
end

def reset
  rand_name = Faker::Base.regexify(/^[A-Z]{2}\d{3}$/)
  while rand_name == name
    rand_name = Faker::Base.regexify(/^[A-Z]{2}\d{3}$/)
  end
name2 = rand_name
@name = name2
return @name

end

end

Robot.new.name

robot = Robot.new
name  = robot.name
