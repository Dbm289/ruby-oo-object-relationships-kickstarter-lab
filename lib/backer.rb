class Backer

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
            #binding.pry
    
        variable = ProjectBacker.all.select do |projects|
            projects.backer == self
        end
        variable.map do |project_list|
            project_list.project
        end
        #binding.pry
    end

end