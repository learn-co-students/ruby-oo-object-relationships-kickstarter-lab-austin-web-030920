class Project
    attr_accessor :title
    def initialize(title)
        @title = title
        
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        spb = ProjectBacker.all.select { |pb| pb.project == self}
        return spb.map {|pb| pb.backer}
    end
end