class ArgonautesController < ApplicationController
  def index
    @argonaute = Argonaute.new
    @argonautes = Argonaute.all
  end

  # def new
  #   @argonaute = Argonaute.new
  # end

  def create
    @argonaute = Argonaute.new(argonaute_params)
    @argonaute.save
    if @argonaute.save
      redirect_to root_path, notice: "L'Argonaute a bien été ajouté !"
    else
      render :new, notice: "Echec ! Cet Argonaute n'a pas pu être enregistré"
    end
  end

  private

  def argonaute_params
    params.require(:argonaute).permit(:name)
  end

end
