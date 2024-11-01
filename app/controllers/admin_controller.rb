class AdminController < ApplicationController
    before_action :is_admin?
    
    def is_admin?
        if current_user.admin == false
            flash[:alert] = "Vous n'avez pas les droits pour accéder à cette page"
            redirect_to root_path
        end
    end
end