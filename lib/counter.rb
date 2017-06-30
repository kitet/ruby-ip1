class CountOccurence
	def countWord(word,string)
		# if word.length>(0) && string.length>(0)
			noofoccurence=0
			tocheck=Regexp::new(word)
			string.gsub(/\s+/, " ")
			string.split(" ").each do |item|
				#item=item.gsub(/\!/,"")
				if item=~/\!/
				else
					item=~/\b#{tocheck}\b/ ? noofoccurence+=1: "do not match"
				end

			end
			noofoccurence
		# else
		# 	raise "Error"
		# end
	end
end

