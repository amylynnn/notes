class LoveNotesController < ApplicationController
  before_action :set_love_note, only: [:show, :edit, :update, :destroy]

  def index
    @love_notes = LoveNote.all
  end

  def show
  end

  def new
    @love_note = LoveNote.new
  end

  def create
    @love_note = LoveNote.new(love_note_params)

    if @love_note.save
      redirect_to love_notes_path, notice: 'Love note was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @love_note.update(love_note_params)
      redirect_to love_notes_path, notice: 'Love note was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @love_note = LoveNote.find(params[:id])
    @love_note.destroy
    redirect_to love_notes_path, notice: 'Love note was successfully destroyed.'
  end

  private

  def set_love_note
    @love_note = LoveNote.find(params[:id])
  end

  def love_note_params
    params.require(:love_note).permit(:title, :message, :date)
  end
end
