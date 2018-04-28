class CommentsController < ApplicationController
    def create
        @address = Address.find(params[:address_id])
        @comment = @address.comments.create(comment_params)
        redirect_to address_path(@address)
    end
    
    def destroy
       
         @address = Address.find(params[:address_id])
        @comment =  @address.comments.find(params[:id])
        @comment.destroy
        redirect_to address_path(@address)
        
        
    end
    
    
    private
    def comment_params
        params.require(:comment).permit(:dateofbirth, :body)
    end
end
