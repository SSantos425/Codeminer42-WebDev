class StatusesController < ApplicationController
    def index
        @statuses = Status.all
    end

    def new
        @status = Status.new
    end

    def create
        @status = Status.new(status_params)
        if @status.save
            redirect_to '/'
        else
            console.log("errou ai migao");
        end
    end

    def edit
        @status = Status.find(params[:id])
    end

    def update
        @status = Status.find(params[:id])

        if @status.update(status_params)
            redirect_to '/'
        else
            console.log("errou ai migao");
        end
    end

    def show
        @status = Status.find(params[:id])
    end

    def destroy
        @status = Status.find(params[:id])
        if @status.destroy
            redirect_to '/'
        else
            console.log("errou ai migao");
        end

        
    end

    private

    def status_params
        params.require(:status).permit(:body)
    end
end
