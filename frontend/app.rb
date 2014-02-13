module Kitetricks
  class Frontend < Padrino::Application
    register Padrino::Rendering
    register Padrino::Mailer
    register Padrino::Helpers
    register SassInitializer

    register Padrino::Sprockets
    sprockets  # :url => 'assets', :root => app.root

    enable :sessions

    get "/" do
        render 'index'
    end

  end
end
