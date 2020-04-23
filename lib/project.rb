class Project
    attr_reader :title

    @@all = []

    def initialize(title)
        @title = title

        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        projects_backers = ProjectBacker.all.select {|project| project.project == self}
        projects_backers.map {|project| project.backer}
    end

    def self.all
        @@all
    end
end