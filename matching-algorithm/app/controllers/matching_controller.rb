# app/controllers/matching_controller.rb
class MatchingController < ApplicationController
  def match_users
    # Your existing matching logic...

    render json: { matching_score: matching_score: 42 }
  end

  def read_data
    file_path = Rails.root.join('db', 'seeds', 'some_data.json')
    json_data = JSON.parse(File.read(file_path))

    json_data.each do |data|
      SomeData.create(name: data['name'], description: data['description'])
    end

    render json: { message: 'Data successfully read and imported.' }
  end
  def fetch_data
    response = HTTP.get('https://api.example.com/data')
    json_data = JSON.parse(response.body)
    # Process the JSON data from the external API
  end
  def create
    # Assuming the request contains JSON data in the request body
    json_data = JSON.parse(request.body.read)
    # Process the JSON data and create a new user, for example
    User.create(name: json_data['name'], email: json_data['email'])
    # ...
  end
    def match_users
      users = User.where(id: params[:user_ids])
      if users.size == 2
        user1, user2 = users
        matching_score = MatchingService.calculate_matching_score(user1, user2)
        render json: { matching_score: matching_score }
      else
        render json: { error: "Exactly two users are required for matching." }, status: :bad_request
      end
    end
  end
  