class CountOccurence
	@@count=0
	def countWord(word,string)
		tocheck=Regexp::new(word)
		string.gsub(/\s+/, " ")
		string.split(" ").each do |item|
			tocheck=~item ? count+=1: "Invalid
		end
	end
end