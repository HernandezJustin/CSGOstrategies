json.ctStrats do
  json.array! @ct_side_strats.each do |strat|
    json.id strat.id
    json.name strat.name
    json.map_name strat.map_name
    json.description strat.description
    json.approved strat.approved
    json.failed strat.failed
    json.succeeded strat.succeeded
    json.flashbangs strat.flashbangs
    json.molotovs strat.molotovs
    json.smokes strat.smokes
    json.grenades strat.grenades
    json.team strat.team
    json.user_id strat.user_id
    json.on_eco strat.on_eco
  end
end

json.tStrats do
  json.array! @t_side_strats.each do |strat|
    json.id strat.id
    json.name strat.name
    json.map_name strat.map_name
    json.description strat.description
    json.approved strat.approved
    json.failed strat.failed
    json.succeeded strat.succeeded
    json.flashbangs strat.flashbangs
    json.molotovs strat.molotovs
    json.smokes strat.smokes
    json.grenades strat.grenades
    json.team strat.team
    json.user_id strat.user_id
    json.on_eco strat.on_eco
  end
end
