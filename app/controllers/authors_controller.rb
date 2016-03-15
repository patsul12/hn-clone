class AuthorsController < ApplicationController
  before_filter :authenticate_author!
end
