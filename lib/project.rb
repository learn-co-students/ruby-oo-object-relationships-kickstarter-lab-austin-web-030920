class Project
    attr_accessor :title
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        x = ProjectBacker.all.select do |e|
            e.project == self
           end
           x.collect do |b|
            b.backer
           end
        end
end