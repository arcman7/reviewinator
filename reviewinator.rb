cohort = {
    "Alex Heinen" => "Aheinen",
    "Andrew Carpenter" => "banned4hax",
    "Angie Ellis" => "angieellis",
    "Anthony Hernandez" => "tonytino139",
    "Ayme Alvarez" => "aymeviviana",
    "Benoit Demonsant" => "keops6fr",
    "Colette Speer" => "speerit",
    "Danielle Rigsby" => "danrigs13",
    "Diana Lozano" => "cutofmyjib",
    "Erica Bohler" => "ecbohler",
    "Fernanda Martins Marques Getschko" => "fmgetschko",
    "Harinder Ghotra" => "HarinderK",
    "Hooman Bargrizan" => "HoomanGriz",
    "Jeanine Loughlin" => "2jeanine",
    "Jonathan Lee" => "jonathanlee46",
    "Joshua Croff" => "joshuacroff",
    "Katy Duncan" => "katyduncan",
    "Kei Oka" => "keioka",
    "Kelenia Olsen" => "",
    "Kelsey Pedersen" => "kpedersen00",
    "Kelvin Gann" => "klvngnn",
    "Majd Murad" => "creatyvtype",
    "Marisa Ramon" => "",
    "Martha Jean Schindler" => "mjschindler",
    "Matthew Dunn" => "radiofreemattd",
    "Mike Henkelman" => "macdevmike",
    "Miranda Pakozdi" => "supery4n",
    "Nathan Lee" => "naaaaate",
    "Nicholas Toulouse" => "nicoto",
    "Paul Ozag" => "paulozag",
    "Robert Austin" => "JugglerX",
    "Sebastien Cheraux" => "sebsonic2o",
    "Spenser Huang" => "spenserhuang",
    "Staunton Sample" => "Sbsample",
    "Tania Abdollahi" => "tabdollahi",
    "Tapley Stephenson" => "tapley",
    "Teresa Martyny" => "tmartyny",
    "Torntanat Cheng" => "jumpcheng"
}

puts "Please paste the github URL you want to review"
# url = gets.chomp
keys = cohort.keys

    require "net/http"
    require "uri"


38.times do |i|
    username = cohort[keys[i]]

    parsed_url = "https://github.com/" + "#{username}" + "/phase-0-unit-2/blob/master/week-6/playlist/my_solution.rb"

    # code to check if the page exists, (404 error)
    # url must contain final /
    url = URI.parse("http://www.google.com/")
    req = Net::HTTP.new(url.host, url.port)
    res = req.request_head(url.path)
    print "Opening #{parsed_url}..." + "#{res.code}"
    puts
    # this all works, but the bloodie github 404 page returns a 302 code - can't figure it out
    if res.code == "404"
        # Do nothing
    else
        system("open", parsed_url)
    end

    # ultimately want to check if the github page has modified content. So only return pages that have a my_solution.rb file which has been worked on. Possibly use github API and check commits?

end





