class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        instance = ProjectBacker.new(self, backer)
    end

    def find_backers
    ProjectBacker.all.select {|project| project.project == self}
    end

    def backers
        find_backers.map {|project| project.backer}
    end

end