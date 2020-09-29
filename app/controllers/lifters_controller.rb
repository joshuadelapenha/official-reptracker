class LiftersController < ApplicationController
    before_action :get_lifter, only: [:show, :edit, :update, :destroy]
    
    def index
        @lifters = Lifter.all
    end 

    def new
        @lifter = Lifter.new
    end

    def create
        @lifter = Lifter.create(lifter_params)
        redirect_to lifters_path
    end

    def update
        @lifter.update(lifter_params)
        redirect_to lifter_path(@lifter)
    end

    def show
        @lifter = Lifter.find(params[:id])
    end

    def destroy
        @lifter.destroy
        redirect_to lifters_path
    end
    
      private
      def get_lifter
        @lifter = Lifter.find(params[:id])
      end
    
      def lifter_params
        params.require(:lifter).permit(:name, :age)
      end
    
end
