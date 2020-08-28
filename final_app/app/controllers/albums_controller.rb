class AlbumsController < ApplicationController
def edit
  @album = Album.find(params[:id])

end

def update
  new_title=params.require(:album).permit(:title)
  @album = Album.find(params[:id])
  @album.update!(title: new_title["title"])
end

end
