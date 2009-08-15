class UsersController < ApplicationController
  # Force the include of the queso helper
  # Engine helpers are not included by default
  helper QuesoSearchHelper

  def index
  end
end
