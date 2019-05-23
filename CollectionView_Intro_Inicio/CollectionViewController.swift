//
//  ViewController.swift
//  CollectionView_Intro_Inicio
//
//  Created by Luis Rollon Gordo on 27/1/17.
//  Copyright © 2017 EfectoApple. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
  
    
    let tvSeries = ["Perdidos", "Friends", "Breaking Bad", "Dexter", "Futurama", "Los Soprano", "Mad Men", "House", "Anatomia de Grey", "24", "CSI", "Deadwood", "Expediente X", "Fringe", "Heroes", "Juego de Tronos", "Los Simpsons", "Doctor Who", "Modern Family", "Padre de Familia", "Prison Break", "South Park", "The Big Bang Theory", "The Walking Dead"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tvSeries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let identifier = "Item"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! SeriesCollectionViewCell
        cell.itemLabel.text = tvSeries[indexPath.row]
        cell.itemImage.image = UIImage.init(imageLiteralResourceName: tvSeries[indexPath.row])
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let item = sender as? UICollectionViewCell
        let indexPath = collectionView.indexPath(for: item!)
        let detailVC = segue.destination as! DetailViewController
        detailVC.detailName = tvSeries[(indexPath?.row)!]
    }

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

