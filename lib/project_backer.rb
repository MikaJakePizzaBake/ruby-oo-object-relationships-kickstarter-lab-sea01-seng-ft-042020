class ProjectBacker
  attr_reader :project, :backer
  def initialize(project, backer)
    @project = project
    @backer = backer
  end
end
