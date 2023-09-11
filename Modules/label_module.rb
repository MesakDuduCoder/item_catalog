require_relative '../classes/Book/label'

module LabelModule
    def list_labels
			if @labels.empty?
					puts 'There are no labels'
			else
				@labels.each_with_index do |label, i|
					puts "Number: #{i + 1}, First name: #{label.first_name}, Last name: #{label.last_name}"
				end
    	end
    end
end