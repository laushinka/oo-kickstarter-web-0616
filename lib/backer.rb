# Should have an attr_accessor for backed projects
# so projects can be added to backer's list
# and so the backer can report on the projects they back
class Backer
  attr_accessor :name, :backed_projects, :add_backer
  @@backers = []

  def initialize(name)
    @name = name
    # Initialize with a @backed_projects variable set to an empty array
    @backed_projects = []
  end

# Refer back to the Code Along about Collaborating Objects.

  def back_project(project)
    # When a backer has added a project to its list of backed projects,
    @backed_projects << project
    # that project instance should also add the backer to its list of backers.
    project.backers << self

  end
  # def backed_projects(project)
  #   @backed_projects << project
  # end
end
