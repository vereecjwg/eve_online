module EveOnline
  module ESI
    class UniverseStructuresStructure < Base
      API_PATH = "/v1/universe/structures/%<structure_id>s/"

      attr_reader :structure_id

      def initialize(options)
        super
        @structure_id = options.fetch(:structure_id)
      end

      def structures
       @assets ||=
          begin
            output = []
            response.each do |asset|
              output << Models::Structure.new(asset)
            end
            output
          end
      end

      def scope
        "esi-universe.read_structures.v1"
      end

      def path
        format(API_PATH, structure_id: structure_id)
      end
    end
  end
end
