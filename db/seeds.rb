# encoding: utf-8
# Seeds

i = [
  {name: 'uni-koeln', full_name: 'Universität zu Köln', c: [{name: 'tkrieg', full_name: 'Univ.-Prof. Dr. Dr. h.c. Thomas Krieg'}, {name: 'rothschild', full_name: 'Univ.-Prof. Dr. Markus Rothschild'}, {name: 'paulsson', full_name: 'Univ.-Prof. Dr. Mats Paulsson'}, {name: 'pfitzer', full_name: 'Univ.-Prof. Dr. Gabriele Pfitzer'}]},
  {name: 'uni-bamberg', full_name: 'Universität Bamberg', c: [{name: 'ivens', full_name: 'Prof. Dr. Björn Ivens'}, {name: 'vincken', full_name: 'Dr. John Vincken'}, {name: 'fliaster', full_name: 'Prof. Dr. Alexander Fliaster'}, {name: 'engelhard', full_name: 'Prof. Dr. Johann Engelhard'}, {name: 'andresen', full_name: 'Prof. Dr. Maike Andresen'}, {name: 'wbecker', full_name: 'Prof. Dr. Wolfgang Becker'}, {name: 'muck', full_name: 'Prof. Dr. Matthias Muck'}]},
  {name: 'uni-augsburg', full_name: 'Universität Augsburg', c: [{name: 'buhl', full_name: 'Prof. Dr. Hans Ulrich Buhl'}, {name: 'fisch', full_name: 'Prof. Dr. Jan H. Fisch'}, {name: 'gierl', full_name: 'Prof. Dr. Heribert Gierl'}, {name: 'lehmann', full_name: 'Prof. Dr. Erik E. Lehmann'}, {name: 'wilkens', full_name: 'Prof. Dr. Marco Wilkens'}]},
]

i.each do |u|
  # Institution
  ni = Institution.new
  ni.name = u[:name]
  ni.full_name = u[:full_name]
  ni.save

  # Channels
  u[:c].each do |c|
    puts "Seeding #{c[:name]} on #{ u[:name] }"
    ni.channels.create!(name: c[:name], full_name: c[:full_name])
  end

end