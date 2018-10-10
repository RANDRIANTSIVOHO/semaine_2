def trader_du_dimanche

  prix = [17,3,6,9,15,8,6,1,10]

  marge = 0
  prixA = 0
  prixV = 0

  for i in (0 ... prix.length)
    for j in (i ... prix.length)
      if prix[j] - prix[i] > marge
        marge = prix[j] - prix[i]
        prixA = i
        prixV = j
      end
    end
  end

puts "[#{prixA},#{prixV}] : $ #{prix[prixV]} - $ #{prix[prixA]}  = $ #{marge} ."
end

trader_du_dimanche