require 'mailgun'

class HomeController < ApplicationController
    def begin
        
        
    end
    
    def input
        
        @recipient = params[:recipient]
        @sender = params[:sender]
        @title = params[:title]
        @content = params[:content]
        
        mg_client = Mailgun::Client.new("key-9cdeb8b738762cd026cc10523b5600dc")

        message_params =  {
                           from: @sender,
                           to:   @recipient,
                           subject: @title,
                           text:    @content
                          }
        
        result = mg_client.send_message('sandboxa746f5fbd5014767ac138b88bb85b2f6.mailgun.org', message_params).to_h!
        
        new_post = Email.new
        new_post.title = @title
        new_post.content = @content
        new_post.save
        
    end
    
    def list
        
        @every_post = Email.all.order("id desc")
        
    end
end
