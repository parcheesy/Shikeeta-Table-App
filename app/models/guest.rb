class Guest < ActiveRecord::Base
        
        def self.search(fullname)
                where(firstname: fullname)
        end
end
