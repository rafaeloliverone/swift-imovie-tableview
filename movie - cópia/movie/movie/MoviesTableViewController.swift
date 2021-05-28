//
//  MoviesTableViewController.swift
//  movie
//
//  Created by IFPB on 27/05/21.
//  Copyright © 2021 IFPB. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    var cadastro: Cadastro!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cadastro = (UIApplication.shared.delegate as! AppDelegate).cadastro
        
        self.tableView.isEditing = true
        
    
        self.navigationItem.leftBarButtonItem = self.editButtonItem    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        self.tableView.reloadData()
    }
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cadastro.count()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tabela", for: indexPath)

        let movie = self.cadastro.get(index: indexPath.row)
        cell.textLabel?.text = movie.nome
        cell.detailTextLabel?.text = String(movie.nota)
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.cadastro.del(index: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let moveObj = self.cadastro.get(index: fromIndexPath.row)
        self.cadastro.del(index: fromIndexPath.row)
        self.cadastro.insert(filme: moveObj, index: destinationIndexPath.row)
        
        
    }

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
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
