class MoviesController < ApplicationController
    
    # GET /birds
    def index
        movies = Movie.all
        render json: movies
    end

    # GET /birds/:id
    def show
        movie = Movie.find_by(id: params[:id])
    if movie
      render json: movie
    else
      render json: { error: "Movie not found" }, status: :not_found
    end
    end
end
