class ForsquareSearch < ActiveRecord::Base
    private

      def foursquare
        @foursquare = Foursquare::Base.new("FUHT4LJZBUKJWNV4EHD1KYWTZGVA3RB2MBTLVZ5JSPN4H5H0","RPRZOQZ3HGIVO1AA0PCNS1UN3ACBTPXIGCISV5K5ZLS3CEBN")
    end

end
