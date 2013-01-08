class ApplicationController < ActionController::Base
  protect_from_forgery

  def user_has_complete_profile
  	unless current_user && current_user.bb
  		flash[:warning]="#{url_to_complete} before manage reservation. ".html_safe
  	end
  end

  def url_to_complete
  	"<a href='#{url_for(new_bb_path)}'> Complete registration</a>"
  end

end
