corpus = File.open("shakespeare.txt", "r")
dictionary1 = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

file = File.open("swearwords.txt", "r")
dictionary2 = []
file.each_line do |line|
  len = line.length
  len = len - 2
  dictionary2 << line[0,len]
end


def jean_michel_data(corpus, dictionary)

  repetition = {}
  mots=[]
  txt=[]
  temp=[]

  corpus.each_line do |line|
    len = line.length
    len = len - 1
    mots << line[0,len]
  end

  mots.each do |line|
    temp = line.downcase.split(" ")
    temp.each do |word|
      txt << word
    end
  end


  dictionary.each do |reference|
    txt.each do |mot|
      if mot == reference
        if repetition.has_key? reference
          repetition[reference] +=1
        else
          repetition[mot] = 1
        end
      end
    end
  end

  repetition.each do |mot, nbFois|
    puts "Le mot \"#{mot}\" est présent #{nbFois} fois"
  end


end

jean_michel_data(corpus, dictionary1)
