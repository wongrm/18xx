# frozen_string_literal: true

# frozen_string_literal: true

module Engine
  module Game
    module G1829
      module Entities
        COMPANIES = [
          {
            name: 'Swansea & Mumbles',
            sym: 'SM',
            value: 30,
            type: 'private',
            revenue: 5,
            desc: 'No special abilities.',
            color: nil,
          },
          {
            name: 'Cromford & High Peak',
            sym: 'CH',
            value: 75,
            type: 'private',
            revenue: 10,
            desc: 'Blocks D11, while owned by a player.',
            abilities: [{ type: 'blocks_hexes', owner_type: 'player', hexes: ['D11'] }],
            color: nil,
          },
          {
            name: 'Canterbury & Whitstable',
            sym: 'CW',
            type: 'private',
            value: 130,
            revenue: 15,
            desc: 'Blocks K22, while owned by a player.',
            abilities: [{ type: 'blocks_hexes', owner_type: 'player', hexes: ['K22'] }],
            color: nil,
          },
          {
            name: 'Liverpool & Manchester',
            sym: 'LM',
            value: 210,
            type: 'private',
            revenue: 20,
            desc: 'Blocks Liverpool (C6,C8), while owned by a player.',
            abilities: [{ type: 'blocks_hexes', owner_type: 'player', hexes: %w[C6 C8] }],
            color: nil,
          },
        ].freeze

        CORPORATIONS = [
          {
            float_percent: 60,
            sym: 'LNWR',
            name: 'London & North Western',
            logo: '1822/LNWR',
            simple_logo: '1829/LNWR.alt',
            tokens: [0, 40, 100, 100, 100],
            max_ownership_percent: 100,
            connect: false,
            abilities: [
            {
              type: 'tile_lay',
              connect: false,
              count: 1,
              tiles: [],
              hexes: %w[B7 B9 B11],
            },
],
            city: 1,
            coordinates: 'E8',
            type: 'init1',
            color: 'black',
            reservation_color: nil,
          },
          {
            float_percent: 60,
            sym: 'GWR',
            name: 'Great Western',
            logo: '1822/GWR',
            simple_logo: '1829/GWR.alt',
            max_ownership_percent: 100,
            tokens: [0, 40, 100, 100, 100],
            coordinates: 'J11',
            min_price: 90,
            type: 'init2',
            color: 'darkgreen',
            reservation_color: nil,
          },
          {
            float_percent: 60,
            sym: 'Mid',
            name: 'Midland',
            logo: '1822/MR',
            simple_logo: '1829/MR.alt',
            max_ownership_percent: 100,
            tokens: [0, 40, 100, 100, 100],
            coordinates: 'E12',
            min_price: 82,
            color: 'red',
            type: 'init3',
            reservation_color: nil,
          },
          {
            float_percent: 60,
            sym: 'LSWR',
            name: 'London & South Western',
            logo: '1822/5',
            simple_logo: '1829/LSWR.alt',
            max_ownership_percent: 100,
            tokens: [0, 40, 100, 100, 100],
            coordinates: 'J17',
            city: 0,
            type: 'init4',
            color: 'lightgreen',
            reservation_color: nil,
          },
          {
            float_percent: 60,
            sym: 'GNR',
            name: 'Great Northern',
            logo: '1822/6',
            simple_logo: '1829/GNR.alt',
            max_ownership_percent: 100,
            tokens: [0, 40, 100, 100],
            coordinates: 'C14',
            color: 'blue',
            type: 'init5',
            reservation_color: nil,
          },
          {
            float_percent: 60,
            sym: 'LBSC',
            name: 'LBSC',
            logo: '1822/LBSCR',
            max_ownership_percent: 100,
            simple_logo: '1829/LBSC.alt',
            tokens: [0, 40, 100, 100],
            coordinates: 'L17',
            color: 'buff',
            type: 'init6',
            reservation_color: nil,
          },
          {
            float_percent: 60,
            sym: 'GER',
            name: 'Great Eastern',
            logo: '1822/7',
            max_ownership_percent: 100,
            simple_logo: '1829/GER.alt',
            tokens: [0, 40, 100, 100],
            coordinates: 'J17',
            city: 2,
            type: 'init7',
            color: 'darkblue',
            reservation_color: nil,
          },
          {
            float_percent: 60,
            sym: 'GCR',
            name: 'Great Central',
            max_ownership_percent: 100,
            logo: '1822/8',
            simple_logo: '1829/GCR.alt',
            tokens: [0, 40, 100, 100],
            coordinates: 'C12',
            type: 'init8',
            color: 'lightblue',
            reservation_color: nil,
          },
          {
            float_percent: 60,
            sym: 'LYR',
            name: 'Lancashire & Yorkshire',
            logo: '1822/LYR',
            max_ownership_percent: 100,
            simple_logo: '1822/LYR.alt',
            tokens: [0, 40, 100],
            coordinates: 'C8',
            city: 1,
            type: 'init9',
            color: 'brown',
            reservation_color: nil,
          },
          {
            float_percent: 60,
            sym: 'SECR',
            name: 'South Eastern & Chatham',
            max_ownership_percent: 100,
            logo: '1822/SECR',
            simple_logo: '1822/SECR.alt',
            tokens: [0, 40, 100],
            coordinates: 'L21',
            type: 'init10',
            color: :"#ADD8E6",
            text_color: 'yellow',
            reservation_color: nil,
          },
        ].freeze
      end
    end
  end
end
