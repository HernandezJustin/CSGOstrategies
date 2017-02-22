module Api
  module V1
    class StrategiesController < ApplicationController
      def index
        @strats = Strat.all
        @t_side_strats = Strat.where(team: "T")
        @ct_side_strats = Strat.where(team: "CT")
      end
    end
  end
end
