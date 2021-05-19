class PagesController < ApplicationController
    def index
        @pages = Page.all
        render component: "Pages", props:{pages:@pages}
    end

    def hotsauce
        render component: "Sauce"
    end
    
end
