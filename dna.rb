def dna(origin)
  origin.tr("TACG", "ATGC")
end

puts dna("TAACGC")