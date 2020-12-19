class Project

    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)

    end

    def backers 
        ProjectBacker.all.select do |backers|
            backers.project == self
        end
    end

end