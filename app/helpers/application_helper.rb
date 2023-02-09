module ApplicationHelper
    include Pagy::Frontend

    def is_active?(link_path)
      if current_page?(link_path)
        "active"
      else
        ""
      end
    end

    def flash_class(level)
      case level
      when :notice then 'alert alert-success'
      when :alert then 'alert alert-danger'
      end
    end
end
