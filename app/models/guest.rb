class Guest < ActiveRecord::Base
        
        before_save :set_fullname

        def self.search(namesearch)
                if namesearch.present?
                        where('fullname LIKE ?', "%#{namesearch.downcase}%")
                end
        end

        protected
                def set_fullname
                        self.fullname = [firstname, lastname].map(&:downcase).join(' ')
                end
end
