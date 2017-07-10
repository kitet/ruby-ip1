class CountOccurence
	def countWord(word,string,selectedvalue)
		# if word.length>(0) && string.length>(0)
			noofoccurence=0
			tocheck=Regexp.new(word)
			string.gsub(/\s+/, " ")
			string.split(" ").each do |item|
				#item=item.gsub(/\!/,"")
				if item=~/\!/
					#do nothing
				else
					if selectedvalue.eql?(0)
						item=~/\b#{tocheck}\b/ ? noofoccurence=+1: "do not match"
					else
						item=~/#{tocheck}/ ? noofoccurence=+1: "do not match"
					end
				end
			end
			noofoccurence
		# else
		# 	raise "Error"
		# end
	end
end

