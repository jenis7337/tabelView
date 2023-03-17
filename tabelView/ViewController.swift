import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
  
    

    var fgcolor = [["jenis","keval","harshid","monil","harsh"],["kuldip","deep"]]
    
    @IBOutlet weak var tabelView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fgcolor[section].count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return fgcolor.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = fgcolor[indexPath.section][indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "section1"
        }
        else if section == 1{
            return "section2"
        }
        return ""
    }

}

