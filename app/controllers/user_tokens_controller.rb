class UserTokensController < Knock::AuthTokenController

  def entity_class
    User
  end

end