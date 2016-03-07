module EveOnline
  class Bookmark
    attr_reader :options

    def initialize(options = {})
      @options = options
    end

    def as_json(*args)
      {
        bookmark_id: bookmark_id,
        creator_id: creator_id,
        created: created,
        item_id: item_id,
        type_id: type_id,
        location_id: location_id,
        x: x,
        y: y,
        z: z,
        memo: memo,
        note: note
      }
    end

    def bookmark_id
      @bookmark_id ||= options.fetch('@bookmarkID').to_i
    end

    def creator_id
      @creator_id ||= options.fetch('@creatorID').to_i
    end

    def created
      # "@created" => "2015-10-25 15:20:34",
      @created ||= options.fetch('@created')
    end

    def item_id
      @item_id ||= options.fetch('@itemID').to_i
    end

    def type_id
      @type_id ||= options.fetch('@typeID').to_i
    end

    def location_id
      @location_id ||= options.fetch('@locationID').to_i
    end

    def x
      @x ||= options.fetch('@x').to_f
    end

    def y
      @y ||= options.fetch('@y').to_f
    end

    def z
      @z ||= options.fetch('@z').to_f
    end

    def memo
      @memo ||= options.fetch('@memo')
    end

    def note
      @note ||= options.fetch('@note')
    end
  end
end
