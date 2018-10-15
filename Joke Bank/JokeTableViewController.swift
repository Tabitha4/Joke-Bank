//
//  JokeTableViewController.swift
//  Joke Bank
//
//  Created by Tabitha Levine on 2018-09-11.
//  Copyright © 2018 Tabitha Levine. All rights reserved.
//

import UIKit

class JokeTableViewController: UITableViewController {
    
    var jokes : [Joke] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let joke1 = Joke()
        joke1.title = "Elephant"
        joke1.text = "Q. What did the elephant say to the naked man?\n\n\nA. How do you breathe through that tiny thing?"
        
        let joke2 = Joke()
        joke2.title = "Circumcision"
        joke2.text = "Q. What do you call a cheap circumcision?\n\n\nA. A rip off."
        
        let joke3 = Joke()
        joke3.title = "Donald Trump"
        joke3.text = "Q. What does Donald Trump's hair and a thong have in common?\n\n\nA. They both barely cover the asshole."
        
        let joke4 = Joke()
        joke4.title = "Chainsaw"
        joke4.text = "Q. What does a woman's pussy and a chainsaw have in common?\n\n\nA. Miss by a few inches and you're in deep shit."
        
        let joke5 = Joke()
        joke5.title = "Cannibal"
        joke5.text = "Q. What did the cannibal do after he dumped his girlfriend?\n\n\nA. Wiped his ass."
        
        let joke6 = Joke()
        joke6.title = "Military"
        joke6.text = "Q. Why is being in the military like a blow-job?\n\n\nA. The closer you get to discharge, the better you feel."
        
        let joke7 = Joke()
        joke7.title = "Emo Kid"
        joke7.text = "Q. How many Emo kids does it take to screw in a lightbulb?\n\n\nA. None. They all sit in the dark and cry."
        
        let joke8 = Joke()
        joke8.title = "David Bowie"
        joke8.text = "Q. What was David Bowie's Last hit?\n\n\nA. Probably heroin"
        
        let joke9 = Joke()
        joke9.title = "Beer"
        joke9.text = "Q. How many men does it take to open a beer?\n\n\nA. None. It should be open by the time she brings it."
        
        let joke10 = Joke()
        joke10.title = "Priest"
        joke10.text = "Q. What is the difference between acne and a catholic priest?\n\n\nA. Acne usually comes on a boys face after he turns twelve."
        
        let joke11 = Joke()
        joke11.title = "Hockey Player"
        joke11.text = "Q. What's the difference between a hippie chick and a hockey player?\n\n\nA. A hockey player showers after three periods"
        
        let joke12 = Joke()
        joke12.title = "Michael Jackson"
        joke12.text = "Q. What's the difference between Michael Jackson and a grocery bag?\n\n\nA. One is made of plastic and is dangerous for a child to play with. The other is used to carry groceries"
        
        let joke13 = Joke()
        joke13.title = "Little Boy"
        joke13.text = "Q. What do you call a little boy with no arms and no legs?\n\n\nA. Names."
        
        let joke14 = Joke()
        joke14.title = "Dead Baby 1"
        joke14.text = "Q. how do you stop a baby from crawling around in circles?\n\n\nA. Nail it's other hand to the floor."
        
        let joke15 = Joke()
        joke15.title = "Dead Baby 2"
        joke15.text = "Q. What do you call a baby on a stick?\n\n\nA. A Kebabie."
        
        jokes = [joke1, joke2, joke3, joke4, joke5, joke6, joke7, joke8, joke9, joke10, joke11, joke12, joke13, joke14, joke15]
        
    }
    

    // How many?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jokes.count
    }
    

    // What goes inside?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = jokes[indexPath.row].title

        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let selectedJoke = jokes[indexPath.row]
        
        performSegue(withIdentifier: "moveToJoke", sender: selectedJoke)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jokeVC = segue.destination as?
            JokeDefinitionViewController {
            
            if let selectedJoke = sender as? Joke {
                jokeVC.joke = selectedJoke
            }
            
        }
    }
    
}
