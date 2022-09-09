class ArgonautesController < ApplicationController
  def index
    @argonaute = Argonaute.new
    @argonautes = Argonaute.all
    @number_of_argonautes = @argonautes.count
    @number_per_column = @number_of_argonautes / 3
    @argonautes_splited = @argonautes.each_slice(@number_per_column).to_a

    @argonautes_1 = @argonautes_splited[0]
    @argonautes_2 = @argonautes_splited[1]
    @argonautes_3 = @argonautes_splited[2]

  end

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
