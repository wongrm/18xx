# frozen_string_literal: true

require_relative '../meta'
require_relative '../g_18_chesapeake/meta'

module Engine
  module Game
    module G18ChesapeakeOffTheRails
      module Meta
        include Game::Meta

        DEV_STAGE = :production
        DEPENDS_ON = '18Chesapeake'

        GAME_DESIGNER = 'Scott Petersen'
        GAME_INFO_URL = 'https://github.com/tobymao/18xx/wiki/18Chesapeake%3A-Off-the-Rails'
        GAME_PUBLISHER = :all_aboard_games
        GAME_RULES_URL = {
          'Base 18Chesapeake Rules' =>
          'https://cdn.shopify.com/s/files/1/0252/9371/7588/files/18Chesapeake.pdf?v=1597256917',
          'Off the Rails Expansion Rules' =>
            'https://www.dropbox.com/s/ivm4jsopnzabhru/18ChesOTR_Rules.png?dl=0',
        }.freeze
        GAME_TITLE = '18Chesapeake: Off the Rails'
        GAME_ALIASES = %w[OTR 18ChesapeakeOTR].freeze
        GAME_IS_VARIANT_OF = G18Chesapeake::Meta
        GAME_ISSUE_LABEL = '18Chesapeake'

        PLAYER_RANGE = [2, 6].freeze
      end
    end
  end
end
