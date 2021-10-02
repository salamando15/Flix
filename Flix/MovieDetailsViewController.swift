//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Juan Contreras on 10/1/21.
//

import UIKit
import AlamofireImage;


class MovieDetailsViewController: UIViewController {
    
    var movie: [String:Any]!

    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
     @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = movie["title"] as? String;
        synopsisLabel.text = movie["overview"] as? String;
        
        let baseUrl = "https://image.tmdb.org/t/p/w780";
        let posterPath = movie["poster_path"] as! String;
        let posterUrl = URL(string: baseUrl + posterPath);
        posterView.af.setImage(withURL: posterUrl!);
        
        //let bdUrl = "https://image.tmdb.org/t/p/w780";
        let bdPath = movie["backdrop_path"] as! String;
        let bdUrl = URL(string: baseUrl + bdPath);
        backdropView.af.setImage(withURL: bdUrl!);


    }
    
 
    
    
   
    
    
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
