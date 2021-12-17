//
//  ViewController.swift
//  MonPremierTableView
//
//  Created by Remi Lefaivre on 09/12/2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var myData = [Pokemon]()
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var pokemons = ["Arcko","Massko","Jungko","Poussifeu","Galifeu","Brasegali","Gobou","Flobio","Laggron","Medhyèna","Grahyèna","Zigzaton","Linéon","Chenipotte","Armulys","Charmillon","Blindalys","Papinox","Nénupiot","Lombre","Ludicolo","Nénupiot","Pifeuil","Tangalice","Nirondelle","Hélédelle","Goélise","Bekipan","Tarsal","Kirlia","Gardevoir","Arakdo","Maskadra","balignon","Chapignon","Parecool","Vigoroth","Monaflèmit","Abra","Kadabra","Alakazam","Ningale","Ninjask","Munja","Chuchmur","Ramboum","Brouhabam","Makuhita","Hariyama","Poissirène","Poissoroy","Magicarpe","Léviator","Azurill","Marill","Azumarill","Racaillou","Gravalanch","Grolem","Tarinor","Skitty","Delcatty","Nosferapti","Nosferalto","Nostenfer","Tentacool","Tentacruel","Ténéfix","Mysdibule","Galekid","Galegon","Galeking","Machoc","Machopeur","Mackogneur","Méditikka","Charmina","Dyanvolt","Elecsprint","Posipi","Négapi","Magnéti","Magnéton","Voltorbe","Electrode","Muciole","Lumivole","Mystherbe","Ortide","Rafflesia","Joliflor","Doduo","Dodrio","Rosélia","Gloupti","Avaltout","Carvanha","Sharpedo","Wailmer","Wailord","Chamallot","Camérupt","Limagma","Volcaropod","Chartor","Tadmorv","Grotadmorv","Smogo","Smogogo","Spoink","Groret","Sabelette","Sablaireau","Spinda","Airmure","Kraknoix","Vibraninf","Libégon","Cacnéa","Cacturne","Tylton","Altaria","Mangriff","Séviper","Séléroc","Solaroc","Barloche","Barbicha","Ecrapince","Colhomard","Balbuto","Kaorine","Lilia","Vacilys","Anorith","Armaldo","Toudoudou","Rondoudou","Groduoudou","Barpau","Milobelus","Mophéo","Stari","Staross","Kecleon","Polichombr","Branette","Skélenox","Téraclope","Tropius","Eoko","Absol","Goupix","Feunard","Pichu","Pikachu","Raichu","Psykokwak","Akwakwak","Okéoké","Qulbutoké","Natu","Xatu","Girafarig","Phanpy","Donphan","Scarabrute","Scarhino","Rhinocorne","Rhinoféros","Stalgamin","Oniglali","Obalie","Phogleur","Kaimorse","Coquiperl","Serpang","Rosabyss","Relicanth","Corayon","Loupio","Lanturn","Lovidisc","Hypotrempe","Hypocéan","Hyporoi","Draby","Drackhaus","Drattak","Terhal","Métang","Métalosse","Regirock","Regice","Registeel","Latias","Latios","Kyogre","Groudon","Rayquaza","Jirachi","Deoxys"]
        
        var types1 = ["plante","plante","plante","feu","feu","feu","eau","eau","eau","tenebr","tenebr","normal","normal","insect","insect","insect","insect","insect","eau","eau","eau","plante","plante","plante","normal","normal","eau","eau","psy","psy","psy","insect","insect","plante","plante","normal","normal","normal","psy","psy","psy","insect","insect","insect","normal","normal","normal","combat","combat","eau"]
            
        var types2 = ["none","none","none","none","combat","combat","none","sol","sol","none","none","none","none","none","none","vol","none","poison","plante","plante","plante","none","tenebr","tenebr","vol","vol","vol","vol","none","none","none","eau","vol","none","combat","none","none","none","none","none","none","sol","vol","spectr","none","none","none","none","none","none"]
        
        var descriptions =
            ["La plante de ses pieds est couverte d'épines qui lui permettent de marcher sur les murs et au plafond.",
            "Ce Pokémon vit dans les jungles luxuriantes. Il s'approche de ses proies en sautant de branche en branche.",
            "Les feuilles sur ses bras peuvent trancher des arbres épais. Dans la jungle, il est invincible.",
            "Il envoie des boules de feu à 1 000 °C. Quand on le prend dans ses bras, on ressent la chaleur des flammes qui brûlent à l'intérieur de son corps.",
            "Son incroyable jeu de jambes lui permet de donner dix coups de pied par seconde. Ses cris aigus intimident l'ennemi.",
            "Ses poings sont enveloppés de flammes qui jaillissent de ses poignets. Il carbonise ses ennemis en les frappant.",
            "Gobou se familiarise avec son environnement en analysant les courants grâce à la nageoire sur sa tête. Il est assez fort pour soulever des rochers.",
            "Ses jambes robustes lui permettent de marcher d'un pas assuré, même dans un bourbier. Il dort enfoui dans la boue.",
            "Il est capable de remorquer un grand bateau à la nage. Un coup de ses bras épais suffit à assommer l'ennemi.",
            "Ce Pokémon très obstiné poursuit sa proie jusqu'à ce que celle-ci s'épuise.",
            "Ce Pokémon traque ses proies en groupe. Il ne désobéira jamais aux ordres d'un bon Dresseur.",
            "Il marche en zigzaguant et n'a pas son pareil pour dénicher des trésors dans l'herbe ou sous terre.",
            "Il fonce sur sa proie à une vitesse de 100 km/h mais il rate souvent sa cible, car il ne peut courir qu'en ligne droite.",
            "Le fil blanc qu'il sécrète par la bouche devient collant au contact de l'air. Il s'en sert pour immobiliser ses ennemis.",
            "À l'abri dans son robuste cocon, il boit la rosée qui se dépose sur ses fils de soie en attendant d'évoluer.",
            "Il volette dans les champs fleuris et récolte du pollen. Il est plus féroce qu'il n'y paraît.",
            "Protégé par son solide cocon, ce Pokémon encaisse les coups sans bouger. Il n'oublie jamais le visage d'un ennemi.",
            "Quand on l'attaque, ce Pokémon nocturne bat des ailes pour disséminer sa poudre toxique.",
            "Il ressemble à une plante aquatique et transporte sur sa feuille les Pokémon qui ne savent pas nager.",
            "Ce mauvais plaisantin s'amuse à déranger les pêcheurs qu'il repère en tirant sur leur ligne.",
            "Il bouge son corps sur un rythme entrainant pour décupler ses forces.",
            "Quand il se suspend à une branche, il ressemble comme deux gouttes d'eau à une Baie. Il aime effrayer les Pokémon qui le picorent par erreur.",
            "Le son de flûte qu'il émet à l'aide de sa feuille angoisse les êtres humains. Il vit au fin fond des forêts.",
            "D'un coup de ses éventails en feuilles, il peut provoquer des bourrasques de plus de 100 km/h capables de balayer une maison.",
            "Ce Pokémon téméraire n'a pas peur d'affronter des ennemis puissants. Il vole en quête de climats chauds.",
            "Ce Pokémon décrit des cercles dans le ciel en quête d'une proie. Dès qu'il en a repéré une, il fond sur elle en piqué pour la capturer.",
            "Ce Pokémon profite des vents marins pour planer à l'aide de ses longues ailes. Il replie ces dernières pour se reposer.",
            "Pour se nourrir, il trempe son grand bec dans la mer. Lorsqu'il le ressort de l'eau, son bec est rempli de proies.",
            "Il perçoit les émotions humaines grâce aux cornes sur sa tête. On dit qu'il se montre aux personnes enjouées.",
            "Ce Pokémon a le pouvoir de ressentir avec finesse les émotions de son Dresseur. Il danse quand il est d'humeur joyeuse.",
            "Ce Pokémon serait prêt à risquer sa vie pour protéger un Dresseur en qui il a confiance. Il a le pouvoir de prédire l'avenir.",
            "Ce Pokémon se déplace à la surface de l'eau comme s'il patinait. Le sommet de sa tête diffuse un parfum pour attirer ses proies.",
            "Ses antennes sont ornées de motifs semblables à des yeux. Ses quatre ailes lui permettent de voler dans toutes les directions.",
            "Il aime vivre au calme dans les coins humides, à l'ombre des arbres. Il faut rester vigilant en sa présence, car son chapeau libère des spores empoisonnées quand il a peur.",
            "Chapignon se rapproche de son ennemi en se servant de son jeu de jambes, puis donne des coups de poings avec ses bras élastiques. La technique de combat de ce Pokémon est digne des meilleurs boxeurs.",
            "Il passe tout son temps à dormir, de jour comme de nuit. Il garde le même nid toute sa vie mais voyage de temps en temps sur de grandes distances en nageant.",
            "Son sang, qui circule énergiquement en lui, l'empêche de rester en place. Il court à travers les champs et les montagnes pour se calmer et trouver le sommeil.",
            "Des hordes de Monaflèmit se réunissent aux pieds des arbres à la saison des fruits. Ils attendent alors patiemment qu'ils tombent pour pouvoir les manger.",
            "Ce Pokémon dort 18 heures par jour. Des études ont révélé qu'il utilise Téléport pour changer de lieu toutes les heures.",
            "On dit que Kadabra était jadis un garçon. Ses pouvoirs psychiques l'auraient fait se transformer alors qu'il participait à des expériences extrasensorielles.",
            "Ce Pokémon est doté de pouvoirs psychiques et d'une grande intelligence qui compensent sa faiblesse physique. Il utilise ses pouvoirs pour se déplacer.",
            "Il fait son nid aux pieds des arbres imposants. A l'aide de ses antennes, il sonde son environnement dans l'obscurité des sous-sols.",
            "Comme il se déplace très rapidement, il est très difficile à apercevoir. On peut attraper des maux de têtes si on écoute son cri strident trop longtemps.",
            "Ce Pokémon étrange flotte dans les airs même si ses ailes restent immobiles. L'intérieur de son corps est creux et totalement sombre.",
            "Ses cris sont aussi bruyants qu'un avion à réaction. Comme il inhale par ses oreilles, il est capable de crier continuellement sans reprendre sa respiration.",
            "Il utilise les haut-parleurs sur sa tête pour attaquer ses adversaires à coup d'ondes ultrasoniques. Il concentre sa force en piétinant le sol.",
            "Sur tout le corps, il possède des organes pouvant générer du son. Il communique en ajustant la tonalité et le volume des cris qu'il émet.",
            "Il adore muscler son corps plus que tout au monde. Si vous entendez des grognements dans une grotte, c'est qu'un Makuhita est en train de s'y entrainer.",
            "Sans hésitation, il défie ceux qu'il croise pour tester leur force. Il est connu pour pouvoir arrêter un train en marche à la seule force de ses bras.",
            "Au printemps, on peut voir des groupes de Poissirène remonter les cours d'eau. Il inflige de sérieux dommages à l'aide de son unique corne."]
        
        
        
            
        for i in 0...201 {
            if i<9 {
                myData.append(Pokemon(nom: pokemons[i], details: descriptions[i], numero: "#00" + String(i+1), photo: String(i+1), type1: types1[i], type2: types2[i]))
            }
            if i>9 && i<49 {
                myData.append(Pokemon(nom: pokemons[i], details: "Description du Pokémon n°" + String(i+1), numero: "#0" + String(i+1), photo: String(i+1), type1: types1[i], type2: types2[i]))
            }
            if i>49 && i<99 {
                myData.append(Pokemon(nom: pokemons[i], details: descriptions[i], numero: "#0" + String(i+1), photo: String(i+1), type1: types1[i], type2: types2[i]))
            }
            else {
                myData.append(Pokemon(nom: pokemons[i], details: descriptions[i], numero: "#" + String(i+1), photo: String(i+1), type1: types1[i], type2: types2[i]))
            }
        }
        myTableView.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currentDateTime = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        let dateString = formatter.string(from: currentDateTime)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! TableViewCell
        cell.myName.text = myData[indexPath.row].nom
        cell.myNumero.text = myData[indexPath.row].numero
        cell.myPhoto.image = UIImage(named: myData[indexPath.row].photo)
        if cell.mySwitch.isOn {
            cell.myCapture.isHidden = false
            cell.myCapture.text! += dateString
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Find the row of the cell
            let row = indexPath.row
            myData.remove(at: row)
            myTableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "details" {
            let detailsViewController = segue.destination as! DetailsViewController
            let myIndexPath = myTableView.indexPathForSelectedRow!
            let row = myIndexPath.row
            detailsViewController.myToDoList = myData[row]
        }
    }
    
    
    @IBAction func unwindToMainView(_ unwindSegue: UIStoryboardSegue) {
        let addViewController = unwindSegue.source as! AddViewController
        if unwindSegue.identifier == "cancel" {
            addViewController.dismiss(animated: true, completion: nil)
        }
        if unwindSegue.identifier == "save" {
            if let myNom = addViewController.myTitle.text, let myDetails = addViewController.myDescription.text, let myNumero = addViewController.myNumber.text, let myType1 = addViewController.myType1.text, let myType2 = addViewController.myType2.text{
                let new_data = Pokemon(nom: myNom,
                                       details: myDetails, numero: myNumero, photo: String(1), type1: myType1, type2: myType2)
                myData.append(new_data)
                myTableView.reloadData()
            }
        }
        // Use data from the view controller which initiated the unwind segue
    }


}

