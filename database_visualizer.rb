require 'camping'
Camping.goes :DatabaseVisualizer

module DatabaseVisualizer::Models
  class User < Base; end
  class Post < Base; belongs_to :user end
end

module DatabaseVisualizer::Controllers
  class Index < R '/'
    def get; render :index end
  end
end

module DatabaseVisualizer::Views
  def layout
    html { body { self << yield } }
  end
  def index
    div.page "Welcome!  <%= Time.now %>"
  end
end
