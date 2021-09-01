//
//  DetailRestoViewController.swift
//  SubmissionRestoApp
//
//  Created by Nanang Makfi Mubarok on 17/07/21.
//

import UIKit

class DetailRestoViewController: UIViewController {

    @IBOutlet weak var nameResto: UILabel!
    @IBOutlet weak var imageResto: UIImageView!
    @IBOutlet weak var addressResto: UILabel!
    @IBOutlet weak var cityResto: UILabel!
    @IBOutlet weak var descriptionResto: UILabel!
    @IBOutlet weak var ratingResto: UILabel!
    @IBOutlet weak var categoryResto: UILabel!
    
    var resto: Resto?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let result = resto {
            imageResto.image = result.image
            nameResto.text = result.name
            cityResto.text = result.city
            descriptionResto.text = result.description
            addressResto.text = result.address
            ratingResto.text = result.rating
            categoryResto.text = result.category
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
