class PagesController < ApplicationController
  def about
  end

  def contact
    @members = ["Thanh", "Dimitri", "Germain", "Damien", "Julien" ]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end
end
