//
//  JokeDefinitionViewController.swift
//  Joke Bank
//
//  Created by Tabitha Levine on 2018-09-11.
//  Copyright © 2018 Tabitha Levine. All rights reserved.
//

import UIKit

class JokeDefinitionViewController: UIViewController {
    
    var joke = Joke()

    @IBOutlet weak var jokeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        title = joke.title
        jokeLabel.text = joke.text
    }

}
