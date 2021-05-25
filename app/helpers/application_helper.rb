module ApplicationHelper

    # Returns the full title on a per-page basis.
    def full_title(page_title = '')
      base_title = "Ruby on Rails Tutorial Sample App"
      if page_title.empty?
        base_title
      else
        #Concantenation is better than  interpolation in this case.
        page_title + " | " + base_title
      end
    end
  end