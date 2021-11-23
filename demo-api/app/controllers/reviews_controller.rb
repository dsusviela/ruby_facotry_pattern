class ReviewsController < ApplicationController
  def index
    app_data = {
      data: [
        {
          id: 1,
          positive_value: 140,
          negative_value: 100,
          accuracy: 0.9
        },
        {
          id: 2,
          positive_value: 150,
          negative_value: 70,
          accuracy: 1
        }
      ]
    }

    render json: app_data
  end
end
