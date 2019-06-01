class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def current_ticket
    if !session[:shopping_cart].nil?
      TicketType.find(params[:ticket_type_id])
    else
      TicketType.new
    end
  end
end
