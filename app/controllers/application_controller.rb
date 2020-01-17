class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    def after_sign_in_path_for(resource)
        user_path(resource.id)
    end

    private
    def after_sign_out_path_for(resource_or_scope)
        root_path # ←redirect先にしたいpathを自分で書く
    end
end
