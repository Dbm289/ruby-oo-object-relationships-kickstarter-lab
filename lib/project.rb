class Project

    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        Project.new(backer, self)

    end

    def backers 
        Backer.all.select do |backers|
            backers.project == self
        end
    end

end