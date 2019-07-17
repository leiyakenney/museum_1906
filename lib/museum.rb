class Museum
  attr_reader :name, :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
    @visitors = []
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

  def admit(patron)
    @visitors << patron
    @visitors
  end

  def patrons
    @visitors
  end

  def patrons_by_exhibit_interest
    tot_reco_exs = []
    tot_pats = []
    ex = recommended_exhibits.each { |exhibit| tot_reco_exs << exhibit}
    pats = @visitors.each { |visitor| tot_pats << visitor}


    tot_pats.map do |tot_pats|
      pat_by_ex_hash[exhibit] = [pats]
      #what I want to do is get each patron's desired exhibits and then somehow map that as the key and the visitor name as the value, but I don't know how. 


      pat_by_ex_hash = Hash.new
    end
    pat_by_ex_hash
  end
end
