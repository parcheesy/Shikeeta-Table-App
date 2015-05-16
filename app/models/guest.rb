class Guest < ActiveRecord::Base
        
        before_save :set_fullname
        
        # Add class search method using fullname attribute
        def self.search(namesearch)
                if namesearch.present?
                        where('fullname LIKE ?', "%#{namesearch.downcase}%")
                end
        end

        # Sets fullname for each new guest.
        protected
                def set_fullname
                        self.fullname = [firstname, lastname].map(&:downcase).join(' ')
                end
end
