import Foundation
import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        painting?.isLiked.toggle()
      //  UIButton.text = "like"
    }
    
    weak var tableView: PaintingViewController?
    
    var painting: Painting?
    
    var paintings: [Painting] = []
    
    override init() {
        for painting in 1 ... 12 {
            let pic = "Image\(painting)"
            return pic
        }
    }
    
}
