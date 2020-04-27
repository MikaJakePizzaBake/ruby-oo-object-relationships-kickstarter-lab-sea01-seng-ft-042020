require 'pry'
class Backer
  attr_reader :name
  def initialize (name)
    @name = name
  end
  def back_project(project)
    ProjectBacker.new(project, self)
  end
  def find_projects
    ProjectBacker.all.select {|project| project.backer == self}
  end
  def backed_projects
    find_projects.map {|project| project.project }
  end
end
binding.pry
