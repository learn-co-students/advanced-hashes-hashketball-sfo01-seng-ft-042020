# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

require 'pry'


def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# takes in an argument of each player's name
# and returns the number of points scored for each player
def num_points_scored(player_name)
  points_scored = ""
  hashketball = game_hash
  
  hashketball.each do |key, value|
    players = value[:players]
      players.each do |element|
        if player_name == element[:player_name]
          points_scored = element[:points]
        end
      end
  end
  points_scored
end

# takes in an argument of each player's name 
# and returns the shoe size for each player.
def shoe_size(player_name)
  shoe_size = ""
  hashketball = game_hash
  
  hashketball.each do |key, value|
    players = value[:players]
      players.each do |element|
        if player_name == element[:player_name]
          shoe_size = element[:shoe]
        end
      end
  end
  shoe_size
end

# takes in an argument of the team name 
# and returns an array of that team's colors
def team_colors(team_name)
  team_colors =[]
  hashketball = game_hash
  
  hashketball.each do |key, value|
    if team_name == value[:team_name]
      team_colors = value[:colors]
    end
  end
  team_colors
end

# returns an array of the team names
def team_names
  team_names = []
  hashketball = game_hash
  
  hashketball.each do |key, value|
    team_names << value[:team_name]
  end
  team_names
end

# takes in an argument of a team name 
# and returns an array of the jersey numbers for that team
def player_numbers(team_name)
  jersey_numbers = []
  hashketball = game_hash
  
  hashketball.each do |key, value|
    players = value[:players]
    players.each do |element|
      if team_name == value[:team_name]
        jersey_numbers << element[:number]
      end
    end
  end
  jersey_numbers
end

# takes in an argument of a player's name 
# and returns a hash of that player's stats
def player_stats(player_name)
  player_stats = {}
  hashketball = game_hash
  
  hashketball.each do |key, value|
    players = value[:players]
    players.each do |element|
      if player_name == element[:player_name]
        player_stats = element
      end
    end
  end
  player_stats
end

# get the value of the largest shoe size from nested hashes
def big_shoe_rebounds_helper
  shoes_array = []
  hashketball = game_hash
  
  hashketball.each do |key, value|
    players = value[:players]
    players.each do |element|
      shoes_array << element[:shoe]
    end
  end
  shoes_array.max
end

# return the number of rebounds associated with the player who has the largest shoe size
# call for big_shoe_rebounds_helper method for largest shoe size value
def big_shoe_rebounds
  big_shoe_rebounds_helper
  rebounds = ""
  hashketball = game_hash
  
  hashketball.each do |key, value|
    players = value[:players]
    players.each do |element|
      if big_shoe_rebounds_helper == element[:shoe]
        rebounds = element[:rebounds]
      end
    end
  end
 rebounds 
end

# get the most point value out of nested hashes
def most_points_scored_helper
  point_array = []
  hashketball = game_hash
  
  hashketball.each do |key, value|
    players = value[:players]
    players.each do |element|
      point_array << element[:point]
    end
  end
  point_array.max
end

# get name of player who has the most points
# call for most_points_scored_helper method for the most point value
def most_points_scored
  most_points_scored_helper
  most_point_player = ""
  hashketball = game_hash
  
  hashketball.each do |key, value|
    players = value[:players]
    players.each do |element|
      if most_points_scored_helper == element[:points]
        most_point_player = element[:player_name]
        binding.pry
      end
    end
  end
  most_point_player
end

# get the name of the team that has the most point
# call for most_points_scored_helper method for the most point value
def winning_team
  most_points_scored_helper
  winning_team = ""
  hashketball = game_hash
  
  hashketball.each do |key, value|
    players = value[:players]
    players.each do |element|
      if most_points_scored_helper == element[:points]
        winning_team = value[:team_name]
      end
    end
  end
  winning_team
end

# get the name of the player who has the longest name
def player_with_longest_name
  long_name = ""
  name = []
  hashketball = game_hash
  
  hashketball.each do |key, value|
    players = value[:players]
    players.each do |element|
      name << element[:player_name]
    end
  end
  long_name = name.max
end

# get a value of the most steal out of nest hashes
def most_steal
  steals_array = []
  hashketball = game_hash
  
  hashketball.each do |key, value|
    players = value[:players]
    players.each do |element|
      steals_array << element[:steals]
    end
  end
  steals_array.max
end

# returns true if the player with the longest name had the most steals
# call for most_steal method for most steals value
def long_name_steals_a_ton?
  most_steal
  player_with_longest_name
  most_steal_player = ""
  hashketball = game_hash
  
  hashketball.each do |key, value|
    players = value[:players]
    players.each do |element|
      if most_steal == element[:steals]
        most_steal_player = element[:player_name]
      end
    end
  end
  player_with_longest_name.eql?(most_steal_player)
end
