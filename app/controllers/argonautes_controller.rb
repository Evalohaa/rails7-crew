class ArgonautesController < ApplicationController
  def index
    @argonautes = Argonaute.all
  end

  def new
    @argonaute = Argonaute.new
  end

  def create
    @argonaute = Argonaute.new(argonaute_params)
    @argonaute.save
    if @argonaute.save
      render :new, notice: "L'Argonaute a bien été ajouté !"
    else
      render :new, notice: "Echec ! Cet Argonaute n'a pas pu être enregistré"
    end
  end

  private

  def argonaute_params
    params.require(:argonaute).permit(:name)
  end

end
