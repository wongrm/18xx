# frozen_string_literal: true

require 'lib/publisher'

module View
  class Welcome < Snabberb::Component
    needs :app_route, default: nil, store: true

    def render
      children = [render_notification]
      children << render_introduction
      children << render_buttons

      h('div#welcome.half', children)
    end

    def render_notification
      message = <<~MESSAGE
        <p><a href="https://github.com/tobymao/18xx/wiki/1847-AE">1847AE</a> is in beta.
        <a href="https://github.com/tobymao/18xx/wiki/1894">1894</a> is in beta.
        <a href="https://github.com/tobymao/18xx/wiki/1822CA">1822CA</a> is in alpha.</p>

        <p>Report bugs and make feature requests <a href='https://github.com/tobymao/18xx/issues'>on GitHub</a>.</p>
      MESSAGE

      props = {
        style: {
          background: 'rgb(240, 229, 140)',
          color: 'black',
          marginBottom: '1rem',
        },
        props: {
          innerHTML: message,
        },
      }

      h('div#notification.padded', props)
    end

    def render_introduction
      message = <<~MESSAGE
        <p>Hello Mr. JJB, check out the <a href='https://github.com/tobymao/18xx/wiki/FAQ'>FAQ</a>, <a href='https://github.com/tobymao/18xx/wiki/Power-User-Features'>keyboard shortcuts</a> and <a href='https://github.com/tobymao/18xx/wiki'>the Wiki</a></p>
        <p>Find games in the chat or <a href='https://github.com/tobymao/18xx/wiki/18xx-Online-Communities%2C-Media%2C-and-Resources#community'>on (unofficial) Discord servers</a></p>
        <p>Setup <a href='https://github.com/tobymao/18xx/wiki/Notifications'>turn notifications</a> via webhook to Slack, Discord, and Telegram</p>
        <p>Ask questions in <code>#18xxgames</code> <a href='https://join.slack.com/t/18xxgames/shared_invite/zt-27imtsj2u-vussFAqtecmACsycjdsIhg'>on the 18XX Slack</a></p>
        <p>Buy physical copies of 18XX games from publishers:</br> #{Lib::Publisher.link_list.join}.</p>
        <p>Keep the servers running by becoming a member <a href='https://www.patreon.com/18xxgames'>on Patreon</a></p>
      MESSAGE

      props = {
        style: {
          marginBottom: '1rem',
        },
        props: {
          innerHTML: message,
        },
      }

      h('div#introduction', props)
    end

    def render_buttons
      props = {
        style: {
          margin: '1rem 0',
        },
      }

      create_props = {
        on: {
          click: -> { store(:app_route, '/new_game') },
        },
      }

      tutorial_props = {
        on: {
          click: -> { store(:app_route, '/tutorial?action=1') },
        },
      }

      h('div#buttons', props, [
        h(:button, create_props, 'CREATE A NEW GAME'),
        h(:button, tutorial_props, 'TUTORIAL'),
      ])
    end
  end
end
