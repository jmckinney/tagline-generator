class SiteController < ApplicationController
  def home
    @noun       = [
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

    @adjective  = [
                    "quantum", 
                    "scale"
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
    
    @verb       = [
                    "circling back",
                    "Powering",
                    "Delivering"
                  ]
    
    @sentence   = ["Its the [adjective] level of the [noun]", 
                   "Bringing your [noun] to the [adjective] world", 
                   "Powering [noun] one [adjective] step at a time"]    
    
    @tagline = @sentence.sample.gsub("[adjective]", @adjective.sample).gsub("[noun]", @noun.sample)
  end
end
