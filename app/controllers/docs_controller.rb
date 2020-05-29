class DocsController < ApplicationController
  def index
  end

  def new
  	@doc = Doc.new
  end

  def create
  	@doc = Doc.create(doc_params)
  	if @doc.save
  		redirect_to @doc
  	else
  		render :new
  	end
  end

  def show
  	@doc = Doc.find(params[:id])
  end

  def edit
  end

  private

  def doc_params
  	params.require(:doc).permit(:title, :content)
  end
end
