class ProjectBacker
    attr_reader :project, :backer

    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        self.class.all.push(self)
    end

    def self.all
        @@all
    end

end