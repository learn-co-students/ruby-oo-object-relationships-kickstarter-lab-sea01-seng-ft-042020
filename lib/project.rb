class Project
    attr_reader :title
    
    def initialize(title)
        @title = title
    end

    def add_backer (backer)
        ProjectBacker.new(self,backer)
    end

    def all_backers
        ProjectBacker.all.select {|backer_name| backer_name.project == self}
    end

    def backers 
        all_backers.map {|backers| backers.backer}
    end
end
