class SampleResponder < ActionController::Responder
  def to_js
    if post?
      if has_errors?
        render
      else
        render js: "window.location = '#{controller.url_for(action: 'index')}'"
      end
    else
      render
    end
  end

  def to_html
    if get?
      render
    elsif has_errors?
      render :action => (post? ? :new : :edit)
    else
      redirect_to action: 'index'
    end
  end
end
