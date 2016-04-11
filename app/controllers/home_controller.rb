class HomeController < ApplicationController
    def begin
        
        
    end
    
    def input
        
        @recipient = params[:recipient]
        @sender = params[:sender]
        @title = params[:title]
        @content = params[:content]
        
    end
    
end
