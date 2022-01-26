module EveOnline
  module ESI
    module Models
      class Structure < Base
        def as_json
          {
            name: is_blueprint_copy,
            owner_id: is_singleton,
            solar_system_id: solar_system_id,
            type_id: type_id
          }
        end

        def name
          options["name"]
        end

        def owner_id
          options["owner_id"]
        end

        def item_id
          options["item_id"]
        end

        def solar_system_id
          options["solar_system_id"]
        end

      end
    end
  end
end
