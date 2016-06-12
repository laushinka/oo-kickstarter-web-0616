require 'pry'

class Project
  # Instances of the Project class should have an attr_accessor for backers
  attr_accessor :title, :backers
  def initialize(title)
    @title = title
    # Initialize with a @backers variable set to an empty array
    @backers = []
  end

# accepts a Backer as an argument and stores it in a backers array
  def add_backer(backer)
    # binding.pry
    # so projects can add backers to their list of backers and report on the backers who support them.
    # new_project = Project.new(backer_name)
    # self.backer = backer_name
    @backers << backer
    # also adds the project(self) to the backer's backed_projects array
    backer.backed_projects << self
  end

end
