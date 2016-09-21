class PagesController < ApplicationController
  def homepage
  end

  def create
    result = {success: true}
  	contact = Contact.new contact_params
  	
    unless contact.save 
      result = {success: false, message: 'error'}
    end

    respond_to do |format|
      format.json { render json: result}
    end                                                           
  end

  def contact_params
  	params.permit(:name, :email, :message)
  end
end
