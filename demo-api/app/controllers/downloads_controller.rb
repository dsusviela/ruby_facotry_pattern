class DownloadsController < ApplicationController
  def index
    app_data = {
      data: [
        {
          id: 1,
          value: 1500
        },
        {
          id: 2,
          value: 2000
        }
      ]
    }

    render json: app_data
  end
end
