class UsersBackofficeController < ApplicationController
    def index
    @notes = Note.all
    end
    before_action :authenticate_user!
    layout'users_backoffice'
end
