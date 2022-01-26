module EveOnline
  module ESI
    class RegionOrders < Base
      API_PATH = "/v1/markets/%<region_id>s/orders/"

      attr_reader :region_id, :page

      def initialize(options)
        super
        @region_id = options.fetch(:region_id)
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

      def additional_query_params
        [:page]
      end

      def path
        format(API_PATH, region_id: region_id)
      end
    end
  end
end
