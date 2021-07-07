require 'pry'
class Backer
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def back_project(project)
        ProjectBacker.new(project,self)
    end
    def backed_projects
        ProjectBacker.all.select{|project|project.backer==self}.map{|project|project.project}
    end
    def self.all
        @@all
    end
end