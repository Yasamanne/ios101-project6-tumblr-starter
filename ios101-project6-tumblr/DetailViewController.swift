//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Yasaman Emami on 10/21/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    var post: Post!

    @IBOutlet weak var posterImageView: UIImageView!
    
    @IBOutlet weak var overviewLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        overviewLabel.text = post.caption
        
        // Remove the HTML tags from the overview
        overviewLabel.text = post.caption.trimHTMLTags()
        
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: posterImageView)
        }

    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
