//
//  FilmsVC.swift
//  StarTrivia
//
//  Created by Nicholas Coggin on 3/22/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import UIKit

class FilmsVC: UIViewController, PersonProtocol {
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var episodeLbl: UILabel!
    @IBOutlet weak var directorLbl: UILabel!
    @IBOutlet weak var producerLbl: UILabel!
    @IBOutlet weak var releasedLbl: UILabel!
    @IBOutlet weak var crawlTxtBox: UITextView!
    
    @IBOutlet weak var previousBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var person: Person!
    let api = FilmApi()
    var films = [String]()
    var currentFilm = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        films = person.filmUrls
        previousBtn.isEnabled = false
        nextBtn.isEnabled = films.count > 1
        guard let firstFilm = films.first else { return }
        getFilm(url: firstFilm)
    }
    
    func getFilm(url: String) {
        api.getFilm(url: url) { (film) in
            if let film = film {
                self.setupView(film: film)
            }
        }
    }
    
    func setupView(film: Film) {
        titleLbl.text = film.title
        episodeLbl.text = String(film.episode)
        directorLbl.text = film.director
        producerLbl.text = film.director
        releasedLbl.text = film.releaseDate
        let strippedCrawl = film.crawl.replacingOccurrences(of: "\n", with: " ")
        crawlTxtBox.text = strippedCrawl.replacingOccurrences(of: "\r", with: "")
    }
    
    @IBAction func previousBtnTapped(_ sender: Any) {
        currentFilm -= 1
        setButtonState()
    }
    
    @IBAction func nextBtnTapped(_ sender: Any) {
        currentFilm += 1
        setButtonState()
    }
    
    func setButtonState() {
        previousBtn.isEnabled = currentFilm == 0 ? false : true
        nextBtn.isEnabled = currentFilm == (films.count - 1) ? false : true
        
        getFilm(url: films[currentFilm])
    }

}
