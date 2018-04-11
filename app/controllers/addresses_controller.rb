class AddressesController < ApplicationController
    def new
    end
    
    def create
        render plain: params[:address].inspect
    end
end
