module EveOnline
  module Characters
    # https://eveonline-third-party-documentation.readthedocs.io/en/latest/xmlapi/character/char_mailinglists.html
    class MailingLists < BaseXML
      API_ENDPOINT = 'https://api.eveonline.com/char/mailinglists.xml.aspx'.freeze

      ACCESS_MASK = 1_024

      attr_reader :key_id, :v_code, :character_id

      def initialize(key_id, v_code, character_id)
        super()
        @key_id = key_id
        @v_code = v_code
        @character_id = character_id
      end

      def url
        "#{ API_ENDPOINT }?keyID=#{ key_id }&vCode=#{ v_code }&characterID=#{ character_id }"
      end
      memoize :url
    end
  end
end
