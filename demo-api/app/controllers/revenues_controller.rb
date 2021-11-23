class RevenuesController < ApplicationController

  def index
    app_data = {
      data: [
        {
          id: 1,
          value: 100,
          accuracy: 0.2
        },
        {
          id: 2,
          value: 90,
          accuracy: 0.8
        }
      ]
    }

    render json: app_data
  end
end
