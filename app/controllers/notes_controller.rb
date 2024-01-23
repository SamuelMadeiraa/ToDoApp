# app/controllers/notes_controller.rb
class NotesController < ApplicationController
    before_action :authenticate_user!
  
    def index
      @user = current_user
      @notes = @user.notes
    end
    def show
    end
    
    def new
      @note = Note.new
    end
  
    def create
      @user = current_user
      @note = @user.notes.create(note_params)
  
      if @note.save
        redirect_to notes_path, notice: 'Nota criada com sucesso!'
      else
        render :new
      end
    end
  
    private
  
    def note_params
      params.require(:note).permit(:title, :content)
    end
  end
  