class EventsController < ApplicationController
    def index
        render json: Event.all 
    end

    def show
        event = Event.find_by(id: params[:id])
        if event
            render json: event
        else 
            render json: { "error": "Event not found" }, status: :not_found
        end
    end
    def create
        event = Event.create!(event_params)
        render json: event, status: :created
    end

    def destroy
		event = Event.find(params[:id])
		event.destroy
		head :no_content
	end

    def update
        event = Event.find_by(id: params[:id])
        if event
            event.update(event_params)
           render json: event
        else
           render json: { error: "Event not found" }, status: :not_found
         end
     end

    private
    def event_params
        params.permit(:name, :description, :start_date, :end_date, :start_time, :end_time, :location, :amount, :image_url, :total_tickets, :remaining_tickets, :category_id)
    end
end
