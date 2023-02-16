RailsAdmin.config do |config|
  # config.asset_source = :webpacker
  config.asset_source = :sprockets
  # config.authorize_with :cancancan

  config.parent_controller = "::ApplicationController"

  config.authorize_with do
    if !current_user || !current_user.admin_role?
      redirect_to(main_app.root_path, alert: "You are not permitted to view this page")
    end
  end

#config.parent_controller = 'ApplicationController' # enabling this uses application_controller.rb to do whatever action it is told to do.
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
