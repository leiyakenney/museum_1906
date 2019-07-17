class Museum
  attr_reader :name, :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits << exhibit
  end

  def recommend_exhibits(patron)
    reco_exhibits = []
    @exhibits.each do |exhibit|
      if patron.interests.include?(exhibit.name)
          reco_exhibits << exhibit
      end
    end
    reco_exhibits
  end
end
