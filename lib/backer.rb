class Backer
    attr_reader :name

    @@all = []

    def initialize(name)
        @name= name

        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        projects_backers = ProjectBacker.all.select {|project| project.backer == self}
        projects_backers.map {|project| project.project}
    end

    def self.all
        @@all
    end
end