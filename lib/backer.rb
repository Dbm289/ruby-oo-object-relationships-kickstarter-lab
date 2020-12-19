class Backer

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        Project.all.select do |projects|
            projects.backer == self
        end

    end

end