class ArgonautesController < ApplicationController
  def index
    @argonautes = Argonaute.all
  end

  def new
  end

  def create
    @argonaute = Argonaute.new(params[:argonaute])
    @argonaute.save
  end
end
