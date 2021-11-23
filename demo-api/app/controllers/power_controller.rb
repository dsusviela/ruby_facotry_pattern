class PowerController < ApplicationController

  def index
    app_data = {
      data: [
        {
          id: 1,
          value: 85,
          accuracy: 0.78
        },
        {
          id: 2,
          value: 100,
          accuracy: 0.99
        }
      ]
    }

    render json: app_data
  end
end
