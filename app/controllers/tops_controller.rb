class TopsController < ApplicationController
    def index
        @tops = Top.order('id ASC').limit(8)
    end
    
    def contact
    end
    
    def about
    end
end
