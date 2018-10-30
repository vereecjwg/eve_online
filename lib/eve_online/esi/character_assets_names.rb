# frozen_string_literal: true

module EveOnline
  module ESI
    class CharacterAssetsNames < Base
      API_ENDPOINT = 'https://esi.evetech.net/v1/characters/%<character_id>s/assets/names/?datasource=%<datasource>s'

      attr_reader :character_id, :item_ids

      def initialize(options)
        super

        @character_id = options.fetch(:character_id)
        @item_ids = options.fetch(:item_ids)
      end

      def assets_names
        output = []
        response.each do |asset_name|
          output << Models::AssetName.new(asset_name)
        end
        output
      end

      def http_method
        'Post'
      end

      def payload
        item_ids.to_json
      end

      def scope
        'esi-assets.read_assets.v1'
      end

      def url
        format(API_ENDPOINT, character_id: character_id, datasource: datasource)
      end
    end
  end
end
