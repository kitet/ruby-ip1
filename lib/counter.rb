class CountOccurence
	def countWord(word,string,selectedvalue)
			noofoccurence=0
			tocheck=word
			string.gsub(/\s+/, " ")
			string.split(" ").each do |item|
				if item=~/\!/
				else
					if selectedvalue.eql?(0)
						item=~/\b#{tocheck}\b/ ? noofoccurence+=1: "do not match"
					else
						item=~/#{tocheck}/ ? noofoccurence+=1: "do not match"
					end
				end
			end
			noofoccurence
	end
end
