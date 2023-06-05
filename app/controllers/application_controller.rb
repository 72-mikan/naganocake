class ApplicationController < ActionController::Base
    before_action :authenticate_any!
    
    # def authenticate_any!
    #   if request.path.match(/\/admin(\/)?/)
    #     authenticate_admin!
    #   elsif controller_name != 'items' #&& action_name == 'index' && action_name == 'show'
    #     authenticate_customer!
    #   end
    # end
    
    
end
