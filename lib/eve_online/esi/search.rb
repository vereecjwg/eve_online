# frozen_string_literal: true

require "forwardable"

module EveOnline
  module ESI
    class Search < Base
      # extend Forwardable

      API_PATH = "/v2/search/"

      DEFAULT_CATEGORIES = [
        "agent",
        "alliance",
        "character",
        "constellation",
        "corporation",
        "faction",
        "inventory_type",
        "region",
        "solar_system",
        "station"
      ]

      attr_reader :search, :strict, :categories

      def initialize(options)
        super

        @search = options.fetch(:search)
        @strict = options.fetch(:strict, false)
        @categories = options.fetch(:categories, DEFAULT_CATEGORIES)
      end

      # def_delegators :model, :as_json, :agent_ids, :alliance_ids,
      #   :character_ids, :constellation_ids, :corporation_ids, :faction_ids,
      #   :inventory_type_ids, :region_ids, :solar_system_ids, :station_ids
      #
      # def model
      #   @model ||= Models::Search.new(response)
      # end
      #
      # def scope
      # end
      #
      # def additional_query_params
      #   [:search, :categories, :strict]
      # end
      #
      # def path
      #   format(API_PATH, search: search, categories: categories.join(","), strict: strict)
      # end
    end
  end
end
