require 'pry'
class Backer
  attr_reader :name
  def initialize (name)
    @name = name
  end
  def back_project(project)
    binding.pry
    ProjectBacker.all.select {|project| project.backer == self}
  end
end
