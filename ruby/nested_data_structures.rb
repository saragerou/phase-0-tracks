# Dresser

dresser = {
  top_drawer: {
    drawer_name: "Top Drawer",
    sections: {
      socks: ["Red Socks", "Blue Socks", "Plaid Socks"],
      underpants: ["Polkadot Underpants", "Striped Underpants"]
    },
  },
  middle_drawer: {
    drawer_name: "Middle Drawer",
    sections: {
      t_shirts: {
        long_sleeve: 3,
        short_sleeve: 5
      },
      tank_tops: ["Purple Tank", "Green Tank"]
    }
  },
  bottom_drawer: {
    drawer_name: "Bottom Drawer",
    sections: {
      pants: {
        full_length: 2,
        capris: 1
      },
      shorts: ["Jean Shorts", "Red Shorts"]
    }
  }
}

p dresser[:top_drawer][:sections][:socks][2]
p dresser[:bottom_drawer][:sections]
p dresser[:middle_drawer][:sections][:t_shirts]
p dresser[:top_drawer][:sections][:underpants][0]
dresser[:bottom_drawer][:sections][:shorts][0], dresser[:bottom_drawer][:sections][:shorts][1] = dresser[:bottom_drawer][:sections][:shorts][1], dresser[:bottom_drawer][:sections][:shorts][0]