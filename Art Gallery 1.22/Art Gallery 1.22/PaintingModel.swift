import Foundation
import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        <#code#>
    }
    
    weak var tableView: PaintingViewController?
    
    var paintings: [Painting] = []
    
    override init() {
        for painting in 1 ... 12 {
            let pic = "image"
        }
    }
    
}
