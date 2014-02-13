module Kitetricks
  class Frontend < Padrino::Application
    register Padrino::Rendering
    register Padrino::Mailer
    register Padrino::Helpers
    register SassInitializer

    register Padrino::Sprockets
    sprockets  # :url => 'assets', :root => app.root

    enable :sessions

    get '/' do
        render 'index'
    end

    # Serve views to Angular
    get :view, :map => '/views/*path' do
        render "#{params[:path].join('/')}"
    end

    # Catch all route and redirect to index with Angular
    get :any, :map => '/*path' do
        redirect '/'
    end

  end
end
