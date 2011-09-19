class App < Sinatra::Base
  helpers do
    def stylesheet_tag(name)    
      "<link href='#{name}' media='screen' rel='stylesheet' type='text/css'>"
    end

    def javascript_tag(name)
      "<script type='text/javascript' src='#{name}'></script>"
    end
  end
end