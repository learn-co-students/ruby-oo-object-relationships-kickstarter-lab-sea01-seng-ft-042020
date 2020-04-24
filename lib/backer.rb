class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        instance = ProjectBacker.new(project, self)
    end

    def find_projects
        ProjectBacker.all.select {|project| project.backer == self}
    end

    def backed_projects
        find_projects.map {|project| project.project}
    end


end