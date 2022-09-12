class ArgonautesController < ApplicationController
  def index
    @argonaute = Argonaute.new
    @argonautes = Argonaute.all
    @argonautes_names = @argonautes.map { |argonaute| argonaute.name }
    @total_argonautes = @argonautes.count
    @number_per_column = @total_argonautes / 3

    if (@total_argonautes % 3).zero?
      @argonautes_splited = @argonautes_names.each_slice(@number_per_column).to_a
    else
      @argonautes_splited = @argonautes_names.each_slice(@number_per_column + 1).to_a
    end
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
