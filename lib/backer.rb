require 'pry'
class Backer
  attr_reader :name
  def initialize (name)
    @name = name
  end
  def back_project(project)
    #binding.pry
    ProjectBacker.new(project, self)
  end
  def find_proj
    #binding.pry
    ProjectBacker.all.select{|project| project.backer == self}
end
  def backed_projects
    binding.pry
    find_proj.map {|project| project.project}
  end

end
