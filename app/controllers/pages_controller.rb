class PagesController < ApplicationController
    def index
        @pages = Page.all
        render component: "Pages", props:{pages:@pages}
    end

    def hotsauce
        render component: "Sauce"
    end

    def show
        @page = Page.find(params[:id])
        render component: "Page", props:{page: @page}
    end

    def destroy
        @page = Page.find(params[:id])
        @page.destroy
        redirect_to pages_path
    end
    
end
