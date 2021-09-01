//
//  ViewController.swift
//  SubmissionRestoApp
//
//  Created by Nanang Makfi Mubarok on 17/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var restoTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Daftar Restoran"
        restoTableView.dataSource = self
        restoTableView.delegate = self
        restoTableView.register(UINib(nibName: "RestoTableViewCell", bundle: nil), forCellReuseIdentifier: "RestoCell")
    }

}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "RestoCell", for: indexPath) as? RestoTableViewCell{
            let resto = restaurants[indexPath.row]
            cell.nameResto.text = resto.name
            cell.cityResto.text = resto.city
            cell.descResto.text = resto.description
            cell.imageResto.image = resto.image
            
            return cell
        }
        else{
            return UITableViewCell()
        }
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView,didSelectRowAt indexPath: IndexPath) {
        // Memanggil View Controller dengan berkas NIB/XIB di dalamnya
        let detail = DetailRestoViewController(nibName: "DetailRestoViewController", bundle: nil)
        
        // Mengirim data hero
        detail.resto = restaurants[indexPath.row]
        
        // Push/mendorong view controller lain
        self.navigationController?.pushViewController(detail, animated: true)
    }
}
