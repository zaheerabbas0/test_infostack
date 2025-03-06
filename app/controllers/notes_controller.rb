class NotesController < ApplicationController
  before_action :authenticate_user!

  def index
    @notes = current_user.notes
  end

  def new
    @note = Note.new
  end

  def create
    @note = current_user.notes.build(note_params)
    if @note.save
      redirect_to notes_path, notice: "Note created successfully"
    else
      render :new
    end
  end

  private

  def note_params
    params.require(:note).permit(:title, :message)
  end
end
