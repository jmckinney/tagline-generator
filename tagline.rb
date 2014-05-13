require 'sinatra'

configure do
  set :nouns, [
                "The Cloud", 
                "disruptor", 
                "gamification", 
                "UX",
                "synergy",
                "Big Data",
                "iconoclasts",
                "nano tech",
                "crowdsourcing",
                "b2b marketing",
                "ROI",
                "sustainability",
                "hybrid methodologies"
              ]
  
  set :adjectives,  [
                      "quantum", 
                      "scale",
                      "HTML5", 
                      "native", 
                      "disruptive", 
                      "bleeding edge",
                      "ephemeral",
                      "experiential",
                      "behavioral",
                      "semantic",
                      "real-time",
                      "hyperlocal",
                      "temporal",
                      "future-proof"
                    ]

  set :verbs, [
                "circling back",
                "Powering",
                "Delivering"
              ]
                
  set :sentences, [
                    "Its the [adjective] level of the [noun]", 
                    "Bringing your [noun] to the [adjective] world", 
                    "Powering [noun] one [adjective] step at a time"
                  ]    

end

get '/' do
    
    @tagline = settings.sentences.sample.gsub("[adjective]", settings.adjectives.sample).gsub("[noun]", settings.nouns.sample)

    erb :index, :layout => :layout

end
