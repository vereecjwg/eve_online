module EveOnline
  module ESI
    class MarketStructures < Base
      API_PATH = "/v1/markets/structures/%<structure_id>s/"

      attr_reader :structure_id, :page

      def initialize(options)
        super
        @structure_id = options.fetch(:structure_id)
        @page = options.fetch(:page, 1)
      end

      def structure_ids
       @assets ||=
          begin
            output = []
            response.each do |asset|
              output << Models::MarketOrder.new(asset)
            end
            output
          end
      end

      def scope
        "esi-markets.structure_markets.v1"
      end

      def additional_query_params
        [:page]
      end

      def path
        API_PATH
      end
    end
  end
end
