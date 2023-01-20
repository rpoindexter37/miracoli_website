class HomepageController < ApplicationController
  include HomepageHelper
  def index
  end
  def restore
  end
  def service
  end
  def swatch
  end
  def shop
  end
  def contact
  end
  def contact_email
    if valid_to_send?(params)
      flash[:success] = "Email Sent"
      ContactMailer.request_proposal(params).deliver_now
      redirect_to contact_path + '#theme'
    else
      flash[:error] = "Please fill in the required Fields"
      redirect_to contact_path + '#theme'
    end
  end

  def resling
    @name = "RE-SLING"
    @box  = resling_box
  end

  def restrap
    @name = "RE-STRAP"
    @box  = restrap_box
  end

  def sandblast
    @name = "SANDBLAST"
    @box  = sandblast_box
  end

  def cushion
    @name = "CUSHION"
    @box  = cushion_box
  end

  def umbrella
    @name = "UMBRELLA"
    @box  = umbrella_box
  end

  def table
    @name = "TABLES"
    @box  = table_box
  end

  def misc
    @name = "MISC"
  end

  def swatch_snp
  end

  def swatch_fabric
  end

  def swatch_vinyl
  end
end
