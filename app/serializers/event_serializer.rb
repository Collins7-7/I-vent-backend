class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :start_date, :end_date, :start_time, :end_time, :location, :amount, :image_url, :total_tickets, :remaining_tickets, :category_id
end
