class ContactMailer < ApplicationMailer
  default :to => "info@miracolifurnitureinc.com", :from => "miracoliarroyo@gmail.com"

  def request_proposal(param)
    @name  = param["name"]
    @phone = param["phone"]
    @email = param["email"]
    @furn  = param["furniture"]
    @serv  = param["services"]
    @no_show  = (param["theme"] == "NO")
    @theme = param["theme"]
    @addr  = param["address"]

    unless param["contact_attach"].blank?
      param["contact_attach"].each do |attach|
        attachments[attach.original_filename] = attach.read
      end
    end 
    mail(:subject => "#{@name} <#{@email}> has requested a Quote!") 
  end
end
