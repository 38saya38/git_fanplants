class TopsController < ApplicationController
    def index
        @tops = Column.order('id ASC').limit(6)
    end
    
    def contact
        
    end
    
    def about
    end
end
