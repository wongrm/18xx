# frozen_string_literal: true

require_relative '../meta'
require_relative '../g_1822_ca/meta'

module Engine
  module Game
    module G1822CaErs
      module Meta
        include Game::Meta
        include G1822CA::Meta

        DEV_STAGE = :prealpha

        DEPENDS_ON = '1822CA'
        GAME_IS_VARIANT_OF = G1822CA::Meta

        GAME_TITLE = '1822CA ERS'
        GAME_DISPLAY_TITLE = '1822CA: Eastern Regional Scenario'
        GAME_LOCATION = 'Eastern Canada'
        GAME_RULES_URL = {
          'Rules' => 'https://boardgamegeek.com/filepage/238950/1822ca-rules',
          '2-player Scenarios' => 'https://boardgamegeek.com/thread/2591186/1822ca-2-player-scenarios',
        }.freeze

        PLAYER_RANGE = [2, 5].freeze
      end
    end
  end
end
