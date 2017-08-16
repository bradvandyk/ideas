module BradCommon
	def self.ideasFilePath
		return Dir.pwd + "/ideas"
	end
	
	def self.verifyideas
		file = self.ideasFilePath
		
		if File.exists?(file)
			text = File.read(file)
			
			if text != ""
				text = text.rstrip
				
				ideas = Array.new
				text.split("\n").each do |potentialIdea|
					if potentialIdea.length > 0 && potentialIdea.strip[0] == "-"
						# puts("potential: #{ideas.count}")
						ideas.push(potentialIdea)
					end
				end
				
				if ideas.count == 0
					abort("ideas file is corrupt :(")
				end
				
				return text
			end
		end
		
		abort("you currently have no ideas :)")
	end
	
	def self.addidea(idea, ideas)
		return ideas.prepend()
	end
	
end
