class ArtworksController < ApplicationController
    def index
        artwork = Artwork.all
        render json: artwork
    end

    def create
        artwork = Artwork.new(artworks_params)
        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        artwork = Artwork.find(params[:id])
        render json: artwork
    end

    def destroy
        artwork = Artwork.find(params[:id])
        render json: artwork
        artwork.delete
    end

    def update
        artwork = Artwork.find(params[:id])
        artwork.update(artworks_params)
        render json: artwork
    end

    private
    def artworks_params
        params.require(:artwork).permit(:title,:image_url,:artist_id)
    end
end
