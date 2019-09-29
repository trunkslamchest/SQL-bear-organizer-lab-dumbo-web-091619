def selects_all_female_bears_return_name_and_age
  puts
  p @db.execute("SELECT name, age FROM bears WHERE gender = 'F'")
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  puts
  p @db.execute("SELECT name FROM bears ORDER BY name ASC")
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  puts
  p @db.execute("SELECT name, age FROM bears WHERE alive = 1 ORDER BY age ASC")
end

def selects_oldest_bear_and_returns_name_and_age
  puts
  p @db.execute("SELECT name, age FROM bears ORDER BY age DESC")[0]
end

def select_youngest_bear_and_returns_name_and_age
  puts
  p @db.execute("SELECT name, age FROM bears ORDER BY age ASC")[0]
end

def selects_most_prominent_color_and_returns_with_count
  puts
  p @db.execute("SELECT color, COUNT(color) FROM bears GROUP BY(color)")[-1]
end

def counts_number_of_bears_with_goofy_temperaments
  puts
  p @db.execute("SELECT COUNT(temperament) FROM bears WHERE temperament = 'goofy'")
end

def selects_bear_that_killed_Tim
  puts
  p @db.execute("SELECT * FROM bears WHERE name IS NULL ")
end
