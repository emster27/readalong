class Api::V1::LoginsController < Api::V1::GraphitiController
  def index
    logins = LoginResource.all(params)
    respond_with(logins)
  end

  def show
    login = LoginResource.find(params)
    respond_with(login)
  end

  def create
    login = LoginResource.build(params)

    if login.save
      render jsonapi: login, status: 201
    else
      render jsonapi_errors: login
    end
  end

  def update
    login = LoginResource.find(params)

    if login.update_attributes
      render jsonapi: login
    else
      render jsonapi_errors: login
    end
  end

  def destroy
    login = LoginResource.find(params)

    if login.destroy
      render jsonapi: { meta: {} }, status: 200
    else
      render jsonapi_errors: login
    end
  end
end
