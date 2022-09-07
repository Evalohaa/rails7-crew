class ArgonautesController < ApplicationController
  def index
    @argonautes = Argonaute.all
  end

  def new
    @argonaute = Argonaute.new
  end

  def create
    @argonautes = Argonaute.all
    @argonaute = Argonaute.new(argonaute_params)
    @argonaute.save
    if @argonaute.save
      redirect_to argonautes_path, notice: "L'Argonaute a bien été ajouté !"
    else
      render :new, notice: "Echec ! Cet Argonaute n'a pas pu être enregistré"
    end
  end

  private

  def argonaute_params
    params.require(:argonaute).permit(:name)
  end

end
