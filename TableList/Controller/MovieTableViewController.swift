//
//  MovieTableViewController.swift
//  TableList
//
//  Created by baiba.vaisle on 02/08/2021.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    var movies = Movie.creteMovie()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieTableViewCell else {return UITableViewCell() }

       /* cell.movieLabel.text = "Jurassic Park I"
        cell.movieImageView.image = UIImage(named: "jp.jpg")*/

        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.movie
        cell.detailTextLabel?.text = movie.year
        cell.imageView?.image = UIImage(named: movie.poster)
        return cell
    }
  

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
       let currentmovie = movies.remove(at: fromIndexPath.row)
       movies.insert(currentmovie, at: to.row)
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
        // Get the new view controller using segue.destination.
            print(indexPath)
            let detailVC = segue.destination as! MovieTableViewController
        // Pass the selected object to the new view controller.
            detailVC.movie = movies[indexPath.row]
        }
     }
    
    
}
