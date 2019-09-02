//
//  PokemonTableViewController.swift
//  Pokédex
//
//  Created by Student on 8/17/16.
//  Copyright © 2016 DMA. All rights reserved.
//

import UIKit

class PokemonTableViewController: UITableViewController, UISearchBarDelegate{

    var pokemonChosen = ""
    var pokemonList : [Pokemon] = []
    let searchController = UISearchController(searchResultsController: nil)
    var searching = false
    var numSearch = false
    
    var pokemonNameNUM = ""
    var imageNameNUM = ""
    
    let searchBar = UISearchBar()
    
    var filteredArray = [String]()
    var shouldShowSearchResults = false
    
    func createSearchBar() {
        searchBar.showsCancelButton = false
        searchBar.placeholder = "Search for a Pokémon by name or number..."
        searchBar.delegate = self
        
        self.navigationItem.titleView = searchBar
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createSearchBar()
        
        self.navigationItem.title = "Pokédex"

        let p1 = Pokemon()
        p1.name = "Bulbasaur"
        p1.imageName = "bulbasaur"
        p1.detail = "Pokémon #001 Type: Grass-Poison"
        p1.color = "green"
        let p2 = Pokemon()
        p2.name = "Ivysaur"
        p2.imageName = "ivysaur"
        p2.detail = "Pokémon #002 Type: Grass-Poison"
        p2.color = "green"
        let p3 = Pokemon()
        p3.name = "Venusaur"
        p3.imageName = "venusaur"
        p3.detail = "Pokémon #003 Type: Grass-Poison"
        p3.color = "green"
        let p4 = Pokemon()
        p4.name = "Charmander"
        p4.imageName = "charmander"
        p4.detail = "Pokémon #004 Type: Fire"
        p4.color = "red"
        let p5 = Pokemon()
        p5.name = "Charmeleon"
        p5.imageName = "charmeleon"
        p5.detail = "Pokémon #005 Type: Fire"
        p5.color = "red"
        let p6 = Pokemon()
        p6.name = "Charizard"
        p6.imageName = "charizard"
        p6.detail = "Pokémon #006 Type: Fire-Flying"
        p6.color = "red"
        let p7 = Pokemon()
        p7.name = "Squirtle"
        p7.imageName = "squirtle"
        p7.detail = "Pokémon #007 Type: Water"
        p7.color = "blue"
        let p8 = Pokemon()
        p8.name = "Wartortle"
        p8.imageName = "wartortle"
        p8.detail = "Pokémon #008 Type: Water"
        p8.color = "blue"
        let p9 = Pokemon()
        p9.name = "Blastoise"
        p9.imageName = "blastoise"
        p9.detail = "Pokémon #009 Type: Water"
        p9.color = "blue"
        let p10 = Pokemon()
        p10.name = "Caterpie"
        p10.imageName = "caterpie"
        p10.detail = "Pokémon #010 Type: Bug"
        p10.color = "green"
        let p11 = Pokemon()
        p11.name = "Metapod"
        p11.imageName = "metapod"
        p11.detail = "Pokémon #011 Type: Bug"
        p11.color = "green"
        let p12 = Pokemon()
        p12.name = "Butterfree"
        p12.imageName = "butterfree"
        p12.detail = "Pokémon #012 Type: Bug-Flying"
        p12.color = "green"
        let p13 = Pokemon()
        p13.name = "Weedle"
        p13.imageName = "weedle"
        p13.detail = "Pokémon #013 Type: Bug-Poison"
        p13.color = "purple"
        let p14 = Pokemon()
        p14.name = "Kakuna"
        p14.imageName = "kakuna"
        p14.detail = "Pokémon #014 Type: Bug-Poison"
        p14.color = "purple"
        let p15 = Pokemon()
        p15.name = "Beedrill"
        p15.imageName = "beedrill"
        p15.detail = "Pokémon #015 Type: Bug-Poison"
        p15.color = "purple"
        let p16 = Pokemon()
        p16.name = "Pidgey"
        p16.imageName = "pidgey"
        p16.detail = "Pokémon #016 Type: Normal-Flying"
        p16.color = "gray"
        let p17 = Pokemon()
        p17.name = "Pidgeotto"
        p17.imageName = "pidgeotto"
        p17.detail = "Pokémon #017 Type: Normal-Flying"
        p17.color = "gray"
        let p18 = Pokemon()
        p18.name = "Pidgeot"
        p18.imageName = "pidgeot"
        p18.detail = "Pokémon #018 Type: Normal-Flying"
        p18.color = "gray"
        let p19 = Pokemon()
        p19.name = "Rattata"
        p19.imageName = "rattata"
        p19.detail = "Pokémon #019 Type: Normal"
        p19.color = "gray"
        let p20 = Pokemon()
        p20.name = "Raticate"
        p20.imageName = "raticate"
        p20.detail = "Pokémon #020 Type: Normal"
        p20.color = "gray"
        let p21 = Pokemon()
        p21.name = "Spearow"
        p21.imageName = "spearow"
        p21.detail = "Pokémon #021 Type: Normal-Flying"
        p21.color = "gray"
        let p22 = Pokemon()
        p22.name = "Fearow"
        p22.imageName = "fearow"
        p22.detail = "Pokémon #022 Type: Normal-Flying"
        p22.color = "gray"
        let p23 = Pokemon()
        p23.name = "Ekans"
        p23.imageName = "ekans"
        p23.detail = "Pokémon #023 Type: Poison"
        p23.color = "purple"
        let p24 = Pokemon()
        p24.name = "Arbok"
        p24.imageName = "arbok"
        p24.detail = "Pokémon #024 Type: Poison"
        p24.color = "purple"
        let p25 = Pokemon()
        p25.name = "Pikachu"
        p25.imageName = "pikachu"
        p25.detail = "Pokémon #025 Type: Electric"
        p25.color = "yellow"
        let p26 = Pokemon()
        p26.name = "Raichu"
        p26.imageName = "raichu"
        p26.detail = "Pokémon #026 Type: Electric"
        p26.color = "yellow"
        let p27 = Pokemon()
        p27.name = "Sandshrew"
        p27.imageName = "sandshrew"
        p27.detail = "Pokémon #027 Type: Ground"
        p27.color = "brown"
        let p28 = Pokemon()
        p28.name = "Sandslash"
        p28.imageName = "sandslash"
        p28.detail = "Pokémon #028 Type: Ground"
        p28.color = "brown"
        let p29 = Pokemon()
        p29.name = "Nidoran♀"
        p29.imageName = "nidoran♀"
        p29.detail = "Pokémon #029 Type: Poison"
        p29.color = "purple"
        let p30 = Pokemon()
        p30.name = "Nidorina"
        p30.imageName = "nidorina"
        p30.detail = "Pokémon #030 Type: Poison"
        p30.color = "purple"
        let p31 = Pokemon()
        p31.name = "Nidoqueen"
        p31.imageName = "nidoqueen"
        p31.detail = "Pokémon #031 Type: Poison-Ground"
        p31.color = "purple"
        let p32 = Pokemon()
        p32.name = "Nidoran♂"
        p32.imageName = "nidoran♂"
        p32.detail = "Pokémon #032 Type: Poison"
        p32.color = "purple"
        let p33 = Pokemon()
        p33.name = "Nidorino"
        p33.imageName = "nidorino"
        p33.detail = "Pokémon #033 Type: Poison"
        p33.color = "purple"
        let p34 = Pokemon()
        p34.name = "Nidoking"
        p34.imageName = "nidoking"
        p34.detail = "Pokémon #034 Type: Poison-Ground"
        p34.color = "purple"
        let p35 = Pokemon()
        p35.name = "Clefairy"
        p35.imageName = "clefairy"
        p35.detail = "Pokémon #035 Type: Fairy"
        p35.color = "pink"
        let p36 = Pokemon()
        p36.name = "Clefable"
        p36.imageName = "clefable"
        p36.detail = "Pokémon #036 Type: Fairy"
        p36.color = "pink"
        let p37 = Pokemon()
        p37.name = "Vulpix"
        p37.imageName = "vulpix"
        p37.detail = "Pokémon #037 Type: Fire"
        p37.color = "red"
        let p38 = Pokemon()
        p38.name = "Ninetales"
        p38.imageName = "ninetales"
        p38.detail = "Pokémon #038 Type: Fire"
        p38.color = "red"
        let p39 = Pokemon()
        p39.name = "Jigglypuff"
        p39.imageName = "jigglypuff"
        p39.detail = "Pokémon #039 Type: Normal-Fairy"
        p39.color = "pink"
        let p40 = Pokemon()
        p40.name = "Wigglytuff"
        p40.imageName = "wigglytuff"
        p40.detail = "Pokémon #040 Type: Normal-Fairy"
        p40.color = "pink"
        let p41 = Pokemon()
        p41.name = "Zubat"
        p41.imageName = "zubat"
        p41.detail = "Pokémon #041 Type: Poison-Flying"
        p41.color = "purple"
        let p42 = Pokemon()
        p42.name = "Golbat"
        p42.imageName = "golbat"
        p42.detail = "Pokémon #042 Type: Poison-Flying"
        p42.color = "purple"
        let p43 = Pokemon()
        p43.name = "Oddish"
        p43.imageName = "oddish"
        p43.detail = "Pokémon #043 Type: Grass-Poison"
        p43.color = "green"
        let p44 = Pokemon()
        p44.name = "Gloom"
        p44.imageName = "gloom"
        p44.detail = "Pokémon #044 Type: Grass-Poison"
        p44.color = "green"
        let p45 = Pokemon()
        p45.name = "Vileplume"
        p45.imageName = "vileplume"
        p45.detail = "Pokémon #045 Type: Grass-Poison"
        p45.color = "green"
        let p46 = Pokemon()
        p46.name = "Paras"
        p46.imageName = "paras"
        p46.detail = "Pokémon #046 Type: Bug-Grass"
        p46.color = "green"
        let p47 = Pokemon()
        p47.name = "Parasect"
        p47.imageName = "parasect"
        p47.detail = "Pokémon #047 Type: Bug-Grass"
        p47.color = "green"
        let p48 = Pokemon()
        p48.name = "Venonat"
        p48.imageName = "venonat"
        p48.detail = "Pokémon #048 Type: Bug-Poison"
        p48.color = "green"
        let p49 = Pokemon()
        p49.name = "Venomoth"
        p49.imageName = "venomoth"
        p49.detail = "Pokémon #049 Type: Bug-Poison"
        p49.color = "green"
        let p50 = Pokemon()
        p50.name = "Diglett"
        p50.imageName = "diglett"
        p50.detail = "Pokémon #050 Type: Ground"
        p50.color = "brown"
        let p51 = Pokemon()
        p51.name = "Dugtrio"
        p51.imageName = "dugtrio"
        p51.detail = "Pokémon #051 Type: Ground"
        p51.color = "brown"
        let p52 = Pokemon()
        p52.name = "Meowth"
        p52.imageName = "meowth"
        p52.detail = "Pokémon #052 Type: Normal"
        p52.color = "gray"
        let p53 = Pokemon()
        p53.name = "Persian"
        p53.imageName = "persian"
        p53.detail = "Pokémon #053 Type: Normal"
        p53.color = "gray"
        let p54 = Pokemon()
        p54.name = "Psyduck"
        p54.imageName = "psyduck"
        p54.detail = "Pokémon #054 Type: Water"
        p54.color = "blue"
        let p55 = Pokemon()
        p55.name = "Golduck"
        p55.imageName = "golduck"
        p55.detail = "Pokémon #055 Type: Water"
        p55.color = "blue"
        let p56 = Pokemon()
        p56.name = "Mankey"
        p56.imageName = "mankey"
        p56.detail = "Pokémon #056 Type: Fighting"
        p56.color = "red"
        let p57 = Pokemon()
        p57.name = "Primeape"
        p57.imageName = "primeape"
        p57.detail = "Pokémon #057 Type: Fighting"
        p57.color = "red"
        let p58 = Pokemon()
        p58.name = "Growlithe"
        p58.imageName = "growlithe"
        p58.detail = "Pokémon #058 Type: Fire"
        p58.color = "red"
        let p59 = Pokemon()
        p59.name = "Arcanine"
        p59.imageName = "arcanine"
        p59.detail = "Pokémon #059 Type: Fire"
        p59.color = "red"
        let p60 = Pokemon()
        p60.name = "Poliwag"
        p60.imageName = "poliwag"
        p60.detail = "Pokémon #060 Type: Water"
        p60.color = "blue"
        let p61 = Pokemon()
        p61.name = "Poliwhirl"
        p61.imageName = "poliwhirl"
        p61.detail = "Pokémon #061 Type: Water"
        p61.color = "blue"
        let p62 = Pokemon()
        p62.name = "Poliwrath"
        p62.imageName = "poliwrath"
        p62.detail = "Pokémon #062 Type: Water"
        p62.color = "blue"
        let p63 = Pokemon()
        p63.name = "Abra"
        p63.imageName = "abra"
        p63.detail = "Pokémon #063 Type: Psychic"
        p63.color = "pink"
        let p64 = Pokemon()
        p64.name = "Kadabra"
        p64.imageName = "kadabra"
        p64.detail = "Pokémon #064 Type: Psychic"
        p64.color = "pink"
        let p65 = Pokemon()
        p65.name = "Alakazam"
        p65.imageName = "alakazam"
        p65.detail = "Pokémon #065 Type: Psychic"
        p65.color = "pink"
        let p66 = Pokemon()
        p66.name = "Machop"
        p66.imageName = "machop"
        p66.detail = "Pokémon #066 Type: Fighting"
        p66.color = "red"
        let p67 = Pokemon()
        p67.name = "Machoke"
        p67.imageName = "machoke"
        p67.detail = "Pokémon #067 Type: Fighting"
        p67.color = "red"
        let p68 = Pokemon()
        p68.name = "Machamp"
        p68.imageName = "machamp"
        p68.detail = "Pokémon #068 Type: Fighting"
        p68.color = "red"
        let p69 = Pokemon()
        p69.name = "Bellsprout"
        p69.imageName = "bellsprout"
        p69.detail = "Pokémon #069 Type: Grass-Poison"
        p69.color = "green"
        let p70 = Pokemon()
        p70.name = "Weepinbell"
        p70.imageName = "weepinbell"
        p70.detail = "Pokémon #070 Type: Grass-Poison"
        p70.color = "green"
        let p71 = Pokemon()
        p71.name = "Victreebel"
        p71.imageName = "victreebel"
        p71.detail = "Pokémon #071 Type: Grass-Poison"
        p71.color = "green"
        let p72 = Pokemon()
        p72.name = "Tentacool"
        p72.imageName = "tentacool"
        p72.detail = "Pokémon #072 Type: Water-Poison"
        p72.color = "blue"
        let p73 = Pokemon()
        p73.name = "Tentacruel"
        p73.imageName = "tentacruel"
        p73.detail = "Pokémon #073 Type: Water-Poison"
        p73.color = "blue"
        let p74 = Pokemon()
        p74.name = "Geodude"
        p74.imageName = "geodude"
        p74.detail = "Pokémon #074 Type: Rock-Ground"
        p74.color = "brown"
        let p75 = Pokemon()
        p75.name = "Graveler"
        p75.imageName = "graveler"
        p75.detail = "Pokémon #075 Type: Rock-Ground"
        p75.color = "brown"
        let p76 = Pokemon()
        p76.name = "Golem"
        p76.imageName = "golem"
        p76.detail = "Pokémon #076 Type: Rock-Ground"
        p76.color = "brown"
        let p77 = Pokemon()
        p77.name = "Ponyta"
        p77.imageName = "ponyta"
        p77.detail = "Pokémon #077 Type: Fire"
        p77.color = "red"
        let p78 = Pokemon()
        p78.name = "Rapidash"
        p78.imageName = "rapidash"
        p78.detail = "Pokémon #078 Type: Fire"
        p78.color = "red"
        let p79 = Pokemon()
        p79.name = "Slowpoke"
        p79.imageName = "slowpoke"
        p79.detail = "Pokémon #079 Type: Water-Psychic"
        p79.color = "blue"
        let p80 = Pokemon()
        p80.name = "Slowbro"
        p80.imageName = "slowbro"
        p80.detail = "Pokémon #080 Type: Water-Psychic"
        p80.color = "blue"
        let p81 = Pokemon()
        p81.name = "Magnemite"
        p81.imageName = "magnemite"
        p81.detail = "Pokémon #081 Type: Electric-Steel"
        p81.color = "yellow"
        let p82 = Pokemon()
        p82.name = "Magneton"
        p82.imageName = "magneton"
        p82.detail = "Pokémon #082 Type: Electric-Steel"
        p82.color = "yellow"
        let p83 = Pokemon()
        p83.name = "Farfetch'd"
        p83.imageName = "farfetch'd"
        p83.detail = "Pokémon #083 Type: Normal-Flying"
        p83.color = "gray"
        let p84 = Pokemon()
        p84.name = "Doduo"
        p84.imageName = "doduo"
        p84.detail = "Pokémon #084 Type: Normal-Flying"
        p84.color = "gray"
        let p85 = Pokemon()
        p85.name = "Dodrio"
        p85.imageName = "dodrio"
        p85.detail = "Pokémon #085 Type: Normal-Flying"
        p85.color = "gray"
        let p86 = Pokemon()
        p86.name = "Seel"
        p86.imageName = "seel"
        p86.detail = "Pokémon #086 Type: Water"
        p86.color = "blue"
        let p87 = Pokemon()
        p87.name = "Dewgong"
        p87.imageName = "dewgong"
        p87.detail = "Pokémon #087 Type: Water-Ice"
        p87.color = "blue"
        let p88 = Pokemon()
        p88.name = "Grimer"
        p88.imageName = "grimer"
        p88.detail = "Pokémon #088 Type: Poison"
        p88.color = "purple"
        let p89 = Pokemon()
        p89.name = "Muk"
        p89.imageName = "muk"
        p89.detail = "Pokémon #089 Type: Poison"
        p89.color = "purple"
        let p90 = Pokemon()
        p90.name = "Shellder"
        p90.imageName = "shellder"
        p90.detail = "Pokémon #090 Type: Water"
        p90.color = "blue"
        let p91 = Pokemon()
        p91.name = "Cloyster"
        p91.imageName = "cloyster"
        p91.detail = "Pokémon #091 Type: Water-Ice"
        p91.color = "blue"
        let p92 = Pokemon()
        p92.name = "Gastly"
        p92.imageName = "gastly"
        p92.detail = "Pokémon #092 Type: Ghost-Poison"
        p92.color = "purple"
        let p93 = Pokemon()
        p93.name = "Haunter"
        p93.imageName = "haunter"
        p93.detail = "Pokémon #093 Type: Ghost-Poison"
        p93.color = "purple"
        let p94 = Pokemon()
        p94.name = "Gengar"
        p94.imageName = "gengar"
        p94.detail = "Pokémon #094 Type: Ghost-Poison"
        p94.color = "purple"
        let p95 = Pokemon()
        p95.name = "Onix"
        p95.imageName = "onix"
        p95.detail = "Pokémon #095 Type: Ground-Rock"
        p95.color = "brown"
        let p96 = Pokemon()
        p96.name = "Drowzee"
        p96.imageName = "drowzee"
        p96.detail = "Pokémon #096 Type: Psychic"
        p96.color = "pink"
        let p97 = Pokemon()
        p97.name = "Hypno"
        p97.imageName = "hypno"
        p97.detail = "Pokémon #097 Type: Psychic"
        p97.color = "pink"
        let p98 = Pokemon()
        p98.name = "Krabby"
        p98.imageName = "krabby"
        p98.detail = "Pokémon #098 Type: Water"
        p98.color = "blue"
        let p99 = Pokemon()
        p99.name = "Kingler"
        p99.imageName = "kingler"
        p99.detail = "Pokémon #099 Type: Water"
        p99.color = "blue"
        let p100 = Pokemon()
        p100.name = "Voltorb"
        p100.imageName = "voltorb"
        p100.detail = "Pokémon #100 Type: Electric"
        p100.color = "yellow"
        let p101 = Pokemon()
        p101.name = "Electrode"
        p101.imageName = "electrode"
        p101.detail = "Pokémon #101 Type: Electric"
        p101.color = "yellow"
        let p102 = Pokemon()
        p102.name = "Exeggcute"
        p102.imageName = "exeggcute"
        p102.detail = "Pokémon #102 Type: Grass-Psychic"
        p102.color = "green"
        let p103 = Pokemon()
        p103.name = "Exeggutor"
        p103.imageName = "exeggutor"
        p103.detail = "Pokémon #103 Type: Grass-Psychic"
        p103.color = "green"
        let p104 = Pokemon()
        p104.name = "Cubone"
        p104.imageName = "cubone"
        p104.detail = "Pokémon #104 Type: Ground"
        p104.color = "brown"
        let p105 = Pokemon()
        p105.name = "Marowak"
        p105.imageName = "marowak"
        p105.detail = "Pokémon #105 Type: Ground"
        p105.color = "brown"
        let p106 = Pokemon()
        p106.name = "Hitmonlee"
        p106.imageName = "hitmonlee"
        p106.detail = "Pokémon #106 Type: Fighting"
        p106.color = "red"
        let p107 = Pokemon()
        p107.name = "Hitmonchan"
        p107.imageName = "hitmonchan"
        p107.detail = "Pokémon #107 Type: Fighting"
        p107.color = "red"
        let p108 = Pokemon()
        p108.name = "Lickitung"
        p108.imageName = "lickitung"
        p108.detail = "Pokémon #108 Type: Normal"
        p108.color = "gray"
        let p109 = Pokemon()
        p109.name = "Koffing"
        p109.imageName = "koffing"
        p109.detail = "Pokémon #109 Type: Poison"
        p109.color = "purple"
        let p110 = Pokemon()
        p110.name = "Weezing"
        p110.imageName = "weezing"
        p110.detail = "Pokémon #110 Type: Poison"
        p110.color = "purple"
        let p111 = Pokemon()
        p111.name = "Rhyhorn"
        p111.imageName = "rhyhorn"
        p111.detail = "Pokémon #111 Type: Ground-Rock"
        p111.color = "brown"
        let p112 = Pokemon()
        p112.name = "Rhydon"
        p112.imageName = "rhydon"
        p112.detail = "Pokémon #112 Type: Ground-Rock"
        p112.color = "brown"
        let p113 = Pokemon()
        p113.name = "Chansey"
        p113.imageName = "chansey"
        p113.detail = "Pokémon #113 Type: Normal"
        p113.color = "gray"
        let p114 = Pokemon()
        p114.name = "Tangela"
        p114.imageName = "tangela"
        p114.detail = "Pokémon #114 Type: Grass"
        p114.color = "green"
        let p115 = Pokemon()
        p115.name = "Kangaskhan"
        p115.imageName = "kangaskhan"
        p115.detail = "Pokémon #115 Type: Normal"
        p115.color = "gray"
        let p116 = Pokemon()
        p116.name = "Horsea"
        p116.imageName = "horsea"
        p116.detail = "Pokémon #116 Type: Water"
        p116.color = "blue"
        let p117 = Pokemon()
        p117.name = "Seadra"
        p117.imageName = "seadra"
        p117.detail = "Pokémon #117 Type: Water"
        p117.color = "blue"
        let p118 = Pokemon()
        p118.name = "Goldeen"
        p118.imageName = "goldeen"
        p118.detail = "Pokémon #118 Type: Water"
        p118.color = "blue"
        let p119 = Pokemon()
        p119.name = "Seaking"
        p119.imageName = "seaking"
        p119.detail = "Pokémon #119 Type: Water"
        p119.color = "blue"
        let p120 = Pokemon()
        p120.name = "Staryu"
        p120.imageName = "staryu"
        p120.detail = "Pokémon #120 Type: Water"
        p120.color = "blue"
        let p121 = Pokemon()
        p121.name = "Starmie"
        p121.imageName = "starmie"
        p121.detail = "Pokémon #121 Type: Water-Psychic"
        p121.color = "blue"
        let p122 = Pokemon()
        p122.name = "Mr. Mime"
        p122.imageName = "mr. mime"
        p122.detail = "Pokémon #122 Type: Psychic-Fairy"
        p122.color = "pink"
        let p123 = Pokemon()
        p123.name = "Scyther"
        p123.imageName = "scyther"
        p123.detail = "Pokémon #123 Type: Bug-Flying"
        p123.color = "green"
        let p124 = Pokemon()
        p124.name = "Jynx"
        p124.imageName = "jynx"
        p124.detail = "Pokémon #124 Type: Ice-Psychic"
        p124.color = "blue"
        let p125 = Pokemon()
        p125.name = "Electabuzz"
        p125.imageName = "electabuzz"
        p125.detail = "Pokémon #125 Type: Electric"
        p125.color = "yellow"
        let p126 = Pokemon()
        p126.name = "Magmar"
        p126.imageName = "magmar"
        p126.detail = "Pokémon #126 Type: Fire"
        p126.color = "red"
        let p127 = Pokemon()
        p127.name = "Pinsir"
        p127.imageName = "pinsir"
        p127.detail = "Pokémon #127 Type: Bug"
        p127.color = "green"
        let p128 = Pokemon()
        p128.name = "Tauros"
        p128.imageName = "tauros"
        p128.detail = "Pokémon #128 Type: Normal"
        p128.color = "gray"
        let p129 = Pokemon()
        p129.name = "Magikarp"
        p129.imageName = "magikarp"
        p129.detail = "Pokémon #129 Type: Water"
        p129.color = "blue"
        let p130 = Pokemon()
        p130.name = "Gyarados"
        p130.imageName = "gyarados"
        p130.detail = "Pokémon #130 Type: Water-Flying"
        p130.color = "blue"
        let p131 = Pokemon()
        p131.name = "Lapras"
        p131.imageName = "lapras"
        p131.detail = "Pokémon #131 Type: Water-Ice"
        p131.color = "blue"
        let p132 = Pokemon()
        p132.name = "Ditto"
        p132.imageName = "ditto"
        p132.detail = "Pokémon #132 Type: Normal"
        p132.color = "gray"
        let p133 = Pokemon()
        p133.name = "Eevee"
        p133.imageName = "eevee"
        p133.detail = "Pokémon #133 Type: Normal"
        p133.color = "gray"
        let p134 = Pokemon()
        p134.name = "Vaporeon"
        p134.imageName = "vaporeon"
        p134.detail = "Pokémon #134 Type: Water"
        p134.color = "blue"
        let p135 = Pokemon()
        p135.name = "Jolteon"
        p135.imageName = "jolteon"
        p135.detail = "Pokémon #135 Type: Electric"
        p135.color = "yellow"
        let p136 = Pokemon()
        p136.name = "Flareon"
        p136.imageName = "flareon"
        p136.detail = "Pokémon #136 Type: Fire"
        p136.color = "red"
        let p137 = Pokemon()
        p137.name = "Porygon"
        p137.imageName = "porygon"
        p137.detail = "Pokémon #137 Type: Normal"
        p137.color = "gray"
        let p138 = Pokemon()
        p138.name = "Omanyte"
        p138.imageName = "omanyte"
        p138.detail = "Pokémon #138 Type: Rock-Water"
        p138.color = "blue"
        let p139 = Pokemon()
        p139.name = "Omastar"
        p139.imageName = "omastar"
        p139.detail = "Pokémon #139 Type: Rock-Water"
        p139.color = "blue"
        let p140 = Pokemon()
        p140.name = "Kabuto"
        p140.imageName = "kabuto"
        p140.detail = "Pokémon #140 Type: Rock-Water"
        p140.color = "blue"
        let p141 = Pokemon()
        p141.name = "Kabutops"
        p141.imageName = "kabutops"
        p141.detail = "Pokémon #141 Type: Rock-Water"
        p141.color = "blue"
        let p142 = Pokemon()
        p142.name = "Aerodactyl"
        p142.imageName = "aerodactyl"
        p142.detail = "Pokémon #142 Type: Rock-Flying"
        p142.color = "brown"
        let p143 = Pokemon()
        p143.name = "Snorlax"
        p143.imageName = "snorlax"
        p143.detail = "Pokémon #143 Type: Normal"
        p143.color = "gray"
        let p144 = Pokemon()
        p144.name = "Articuno"
        p144.imageName = "articuno"
        p144.detail = "Pokémon #144 Type: Ice-Flying"
        p144.color = "blue"
        let p145 = Pokemon()
        p145.name = "Zapdos"
        p145.imageName = "zapdos"
        p145.detail = "Pokémon #145 Type: Electric-Flying"
        p145.color = "yellow"
        let p146 = Pokemon()
        p146.name = "Moltres"
        p146.imageName = "moltres"
        p146.detail = "Pokémon #146 Type: Fire-Flying"
        p146.color = "red"
        let p147 = Pokemon()
        p147.name = "Dratini"
        p147.imageName = "dratini"
        p147.detail = "Pokémon #147 Type: Dragon"
        p147.color = "purple"
        let p148 = Pokemon()
        p148.name = "Dragonair"
        p148.imageName = "dragonair"
        p148.detail = "Pokémon #148 Type: Dragon"
        p148.color = "purple"
        let p149 = Pokemon()
        p149.name = "Dragonite"
        p149.imageName = "dragonite"
        p149.detail = "Pokémon #149 Type: Dragon-Flying"
        p149.color = "purple"
        let p150 = Pokemon()
        p150.name = "Mewtwo"
        p150.imageName = "mewtwo"
        p150.detail = "Pokémon #150 Type: Psychic"
        p150.color = "pink"
        let p151 = Pokemon()
        p151.name = "Mew"
        p151.imageName = "mew"
        p151.detail = "Pokémon #151 Type: Psychic"
        p151.color = "pink"
        
        pokemonList.append(p1)
        pokemonList.append(p2)
        pokemonList.append(p3)
        pokemonList.append(p4)
        pokemonList.append(p5)
        pokemonList.append(p6)
        pokemonList.append(p7)
        pokemonList.append(p8)
        pokemonList.append(p9)
        pokemonList.append(p10)
        pokemonList.append(p11)
        pokemonList.append(p12)
        pokemonList.append(p13)
        pokemonList.append(p14)
        pokemonList.append(p15)
        pokemonList.append(p16)
        pokemonList.append(p17)
        pokemonList.append(p18)
        pokemonList.append(p19)
        pokemonList.append(p20)
        pokemonList.append(p21)
        pokemonList.append(p22)
        pokemonList.append(p23)
        pokemonList.append(p24)
        pokemonList.append(p25)
        pokemonList.append(p26)
        pokemonList.append(p27)
        pokemonList.append(p28)
        pokemonList.append(p29)
        pokemonList.append(p30)
        pokemonList.append(p31)
        pokemonList.append(p32)
        pokemonList.append(p33)
        pokemonList.append(p34)
        pokemonList.append(p35)
        pokemonList.append(p36)
        pokemonList.append(p37)
        pokemonList.append(p38)
        pokemonList.append(p39)
        pokemonList.append(p40)
        pokemonList.append(p41)
        pokemonList.append(p42)
        pokemonList.append(p43)
        pokemonList.append(p44)
        pokemonList.append(p45)
        pokemonList.append(p46)
        pokemonList.append(p47)
        pokemonList.append(p48)
        pokemonList.append(p49)
        pokemonList.append(p50)
        pokemonList.append(p51)
        pokemonList.append(p52)
        pokemonList.append(p53)
        pokemonList.append(p54)
        pokemonList.append(p55)
        pokemonList.append(p56)
        pokemonList.append(p57)
        pokemonList.append(p58)
        pokemonList.append(p59)
        pokemonList.append(p60)
        pokemonList.append(p61)
        pokemonList.append(p62)
        pokemonList.append(p63)
        pokemonList.append(p64)
        pokemonList.append(p65)
        pokemonList.append(p66)
        pokemonList.append(p67)
        pokemonList.append(p68)
        pokemonList.append(p69)
        pokemonList.append(p70)
        pokemonList.append(p71)
        pokemonList.append(p72)
        pokemonList.append(p73)
        pokemonList.append(p74)
        pokemonList.append(p75)
        pokemonList.append(p76)
        pokemonList.append(p77)
        pokemonList.append(p78)
        pokemonList.append(p79)
        pokemonList.append(p80)
        pokemonList.append(p81)
        pokemonList.append(p82)
        pokemonList.append(p83)
        pokemonList.append(p84)
        pokemonList.append(p85)
        pokemonList.append(p86)
        pokemonList.append(p87)
        pokemonList.append(p88)
        pokemonList.append(p89)
        pokemonList.append(p90)
        pokemonList.append(p91)
        pokemonList.append(p92)
        pokemonList.append(p93)
        pokemonList.append(p94)
        pokemonList.append(p95)
        pokemonList.append(p96)
        pokemonList.append(p97)
        pokemonList.append(p98)
        pokemonList.append(p99)
        pokemonList.append(p100)
        pokemonList.append(p101)
        pokemonList.append(p102)
        pokemonList.append(p103)
        pokemonList.append(p104)
        pokemonList.append(p105)
        pokemonList.append(p106)
        pokemonList.append(p107)
        pokemonList.append(p108)
        pokemonList.append(p109)
        pokemonList.append(p110)
        pokemonList.append(p111)
        pokemonList.append(p112)
        pokemonList.append(p113)
        pokemonList.append(p114)
        pokemonList.append(p115)
        pokemonList.append(p116)
        pokemonList.append(p117)
        pokemonList.append(p118)
        pokemonList.append(p119)
        pokemonList.append(p120)
        pokemonList.append(p121)
        pokemonList.append(p122)
        pokemonList.append(p123)
        pokemonList.append(p124)
        pokemonList.append(p125)
        pokemonList.append(p126)
        pokemonList.append(p127)
        pokemonList.append(p128)
        pokemonList.append(p129)
        pokemonList.append(p130)
        pokemonList.append(p131)
        pokemonList.append(p132)
        pokemonList.append(p133)
        pokemonList.append(p134)
        pokemonList.append(p135)
        pokemonList.append(p136)
        pokemonList.append(p137)
        pokemonList.append(p138)
        pokemonList.append(p139)
        pokemonList.append(p140)
        pokemonList.append(p141)
        pokemonList.append(p142)
        pokemonList.append(p143)
        pokemonList.append(p144)
        pokemonList.append(p145)
        pokemonList.append(p146)
        pokemonList.append(p147)
        pokemonList.append(p148)
        pokemonList.append(p149)
        pokemonList.append(p150)
        pokemonList.append(p151)
        
        whileLoop()
        whileLoopColor()
        whileLoopDesc()
        self.view.backgroundColor = UIColor.lightGray
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    
    var pokemonNames : [String] = []
    
    func whileLoop () {
        var i = 0
        while (i < pokemonList.count) {
            pokemonNames.append(pokemonList[i].name)
            i += 1
        }
    }
    
    var pokemonColors : [String] = []
    
    func whileLoopColor () {
        var i = 0
        while (i < pokemonList.count) {
            pokemonColors.append(pokemonList[i].color)
            i += 1
        }
    }
    
    var pokemonDesc : [String] = []
    
    func whileLoopDesc() {
        var i = 0
        while (i < pokemonList.count) {
            pokemonDesc.append(pokemonList[i].detail)
            i += 1
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        let decimalCharacters = CharacterSet.decimalDigits
        
        let decimalRange = searchText.rangeOfCharacter(from: decimalCharacters, options: NSString.CompareOptions(), range: nil)
        
        if decimalRange != nil {
            filteredArray = pokemonDesc.filter({ (names: String) -> Bool in
                return names.lowercased().range(of: searchText.lowercased()) != nil
            })
            numSearch = true
        }else {
            filteredArray = pokemonNames.filter({ (names: String) -> Bool in
                return names.lowercased().range(of: searchText.lowercased()) != nil
            })
            numSearch = false
        }
        
        if searchText != ""
        {
            shouldShowSearchResults = true
            self.tableView.reloadData()
            searching = true
        }else{
            shouldShowSearchResults = false
            self.tableView.reloadData()
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if shouldShowSearchResults {
            return filteredArray.count
        }else {
            return pokemonList.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pCell", for: indexPath)
        // Configure the cell...
        
        if shouldShowSearchResults {
            var imageDesc = ""
            
            if (numSearch == true) {
                cell.detailTextLabel?.text = filteredArray[indexPath.row]
                var i = 0
                var done = false
                if (done == false) {
                    while (i < pokemonList.count){
                        if (pokemonList[i].detail == filteredArray[indexPath.row]) {
                            pokemonNameNUM = pokemonList[i].name
                            imageNameNUM = pokemonList[i].imageName
                            done = true
                        }
                        i += 1
                    }
                }else {
                    
                }
                cell.imageView!.image = UIImage (named: imageNameNUM)
                cell.textLabel!.text = pokemonNameNUM
            }else {
                cell.textLabel!.text = filteredArray[indexPath.row]
                var imageName = filteredArray[indexPath.row]
                var j = 0
                while (j < pokemonList.count){
                    if (pokemonList[j].name == filteredArray[indexPath.row]) {
                        imageDesc = pokemonList[j].detail
                    }
                    j += 1
                }
                cell.detailTextLabel?.text = imageDesc
                imageName = imageName.lowercased()
                cell.imageView!.image = UIImage (named: imageName)
                searching = true
            }
            return cell
        }else {
            cell.textLabel?.text = pokemonList[indexPath.row].name
            cell.imageView!.image = UIImage (named: pokemonList[indexPath.row].imageName)
            cell.detailTextLabel?.text = pokemonList[indexPath.row].detail
            searching = false
            return cell
        }
    }
    
    override func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        searchBar.endEditing(true)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        shouldShowSearchResults = true
        searchBar.endEditing(true)
        self.tableView.reloadData()
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let detailsVC = segue.destination as? DetailPageViewController, let cell = sender as? UITableViewCell,        let indexPath = self.tableView.indexPath(for: cell) {
            
            print("setting vars in VC")//passing the row clicked to our next screen
            if (searching == true) {
                if (numSearch == true) {
                    var k = 0
                    var pokemonColor = ""
                    while (k < pokemonList.count){
                        if (pokemonList[k].detail == filteredArray[indexPath.row]) {
                            pokemonColor = pokemonList[k].color
                            pokemonNameNUM = pokemonList[k].name
                        }
                        k += 1
                    }
                    detailsVC.pokemon = pokemonNameNUM
                    detailsVC.pokemonColor = pokemonColor
                }else {
                    detailsVC.pokemon = filteredArray[indexPath.row]
                    var k = 0
                    var pokemonColor = ""
                    while (k < pokemonList.count){
                        if (pokemonList[k].name == filteredArray[indexPath.row]) {
                            pokemonColor = pokemonList[k].color
                        }
                        k += 1
                    }
                    detailsVC.pokemonColor = pokemonColor
                }
            }else {
                detailsVC.pokemon = pokemonNames[indexPath.row]
                detailsVC.pokemonColor = pokemonColors[indexPath.row]
            }
            detailsVC.pokemonList = pokemonList
            //we can pass more info here too
        }
    }

}
