class ArgonautesController < ApplicationController
  def index
    @argonaute = Argonaute.new
    @argonautes = Argonaute.all
    argonautes_names = @argonautes.map { |argonaute| argonaute.name }
    total_argonautes = @argonautes.count
    padding = 3 - total_argonautes % 3
    collection = argonautes_names.concat([nil] * padding)
    @argonautes_splited = collection.each_slice(3).to_a.transpose.collect(&:compact)
  end

  def create
    @argonaute = Argonaute.new(argonaute_params)
    @argonaute.save
    if @argonaute.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def argonaute_params
    params.require(:argonaute).permit(:name)
  end
end
