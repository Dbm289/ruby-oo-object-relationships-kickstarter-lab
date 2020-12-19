require 'pry'
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
        #binding.pry

        variable = ProjectBacker.all.select do |backers|
            backers.project == self
        end
        variable.map do |backer_list|
            backer_list.backer
        end
        #binding.pry
    end

end