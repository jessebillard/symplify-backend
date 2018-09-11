class Api::V1::NotesController < ApplicationController

    def index
        @notes = Note.all
        render json: @notes
    end

    def create

    end

    def update

    end

    def destroy
        # byebug
        @note = Note.find(params[:id])    
        if @note
            @note.destroy            
            render json: {id: params[:id]}
        else
            render json: error_message
        end
    end

    private

    def error_message
        {status: "error", code: 400, message: "This request cannot be completed"}
    end

end
