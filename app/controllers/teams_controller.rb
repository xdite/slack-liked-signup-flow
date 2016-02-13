# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string
#  domain     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TeamsController < ApplicationController
  before_action :find_this_team

  layout "teams"

  def show
  end

  protected


  def find_this_team

    @team = current_user.teams.find_by_domain(request.host.split('.').first)
    # make sure with domain
    # TODO: devise also need to check permission
    # TODO: check redirect path

  end

end
