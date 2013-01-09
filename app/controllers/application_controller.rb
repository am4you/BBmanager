class ApplicationController < ActionController::Base
  protect_from_forgery

  def user_has_complete_profile
  	unless current_user && current_user.bb
  		flash[:info]="#{url_to_complete} before manage reservation. ".html_safe
  	end
  end

  def url_to_complete
  	"<strong><a href='#{url_for(new_bb_path)}'> Complete registration</a></strong>"
  end
def after_sign_in_path_for(resource)
 	bbs_path
end

end
