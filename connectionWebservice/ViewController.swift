//
//  ViewController.swift
//  connectionWebservice
//
//  Created by Kemin Suenggittawisuthi on 27/6/61.
//  Copyright © พ.ศ. 2561 Kemin Suenggittawisuthi. All rights reserved.
//

import UIKit
import Alamofire

var arai:String!
class ViewController: UIViewController {

//    var people = [Todos]()
    var timesheet = [Timesheet]()
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var other: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
//    var person : User!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func onGetTapped(_ sender: Any) {
        print("GET")
        NetworkingService.shared.getPeople { response in
            print(response)
            arai = response
        }
    }
    
    @IBAction func onPostTapped(_ sender: Any) {
        print("POST")
        connectingWeb.shared.postPeople { response in
            self.timesheet = response.timesheet
//            print(response.timesheet)
            self.tableView.reloadData()
            print("got it!")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "PeopleToDetails",
            let detail = segue.destination as? Detail,
            let timesheet = sender as AnyObject as? Timesheet
            else { return }
        detail.timesheet = timesheet
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return timesheet.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = timesheet[indexPath.row].date
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "PeopleToDetails", sender: timesheet[indexPath.row])
    }
}
