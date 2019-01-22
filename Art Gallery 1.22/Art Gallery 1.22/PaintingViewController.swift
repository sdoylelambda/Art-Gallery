import UIKit

class PaintingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }

    @IBOutlet weak var tableView: UITableView!
    
}

