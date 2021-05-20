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
    
    def new
        render component: "PageNew"
    end

    def create
        page = Page.new(page_params)
        if page.save
            redirect_to pages_path
        else

        end

    end

    def edit
        @page = Page.find(params[:id])
        render component: "PageEdit", props:{page:@page}
    end

    def update
        @page = Page.find(params[:id])
        if (@page.update(page_params))
            redirect_to pages_path
        else
        end

    end


    private

    def page_params
        params.require(:page).permit(:title, :author, :body)
    end



end
