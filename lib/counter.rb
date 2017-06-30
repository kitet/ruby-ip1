class CountOccurence
	@@count=0
	def countWord(word,string)
		tocheck=Regexp::new(word)
		string.gsub(/\s+/, " ")
		string.split(" ").each do |item|
			item=~/\b#{item}\b/ ? count+=1: "do not match"
		end
		count
	end
end