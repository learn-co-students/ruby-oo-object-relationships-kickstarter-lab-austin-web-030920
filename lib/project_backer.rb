class ProjectBacker
    attr_accessor :project, :backer
    @@all = []

    def initialize(project, backer)
        @backer = backer
        @project = project

        self.class.all << self
    end

    def self.all
        @@all
    end
end