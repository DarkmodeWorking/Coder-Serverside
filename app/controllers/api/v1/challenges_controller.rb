module Api
  module V1
    class ChallengesController < ApplicationController
      
      def index
        @challenges = Challenge.all 
        render json: @challenges
      end

      def create
        # 3251
        challenge = Challenge.create(
          title: 'Anurag Bhattacharjee',
          description: 'Hello World',
          start_date: Date.today,
          end_date: Date.tommorrow
        )
        if challenge.save
          render json: { message: 'Challenge added successfully', data: challenge }
        else
          render json: { message: 'Failed to add challenge', date: challenge.errors }
        end
      end

      def show
      end

      def update
      end

      def destroy
      end

    end
  end
end