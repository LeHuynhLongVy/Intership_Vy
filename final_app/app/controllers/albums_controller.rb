class AlbumsController < ApplicationController
def edit
  @album = Album.find(params[:id])
end

def update
  @album = Album.find(params[:id])
  new_title=params.require(:album).permit(:title)
  @album.title = new_title["title"]
  if @album.valid?
    @album.update(title: new_title["title"])
    flash[:success] = 'Album title was updated successfully.'
    redirect_to action: :edit
    # render :edit
  else
    flash[:error] = @album.errors.full_messages[0]
    # render :edit
    redirect_to action: :edit
    # format.html{ render :action => edit}
  end
    # redirect_to @album, notice: 'Album title was updated successfully.'
  # end
end

end
