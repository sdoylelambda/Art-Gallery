import Foundation
import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    weak var tableView: UITableView?
    
    var painting: Painting?
    
    var paintings: [Painting] = []
    
    override init() {
        for i in 1...12 {
            let imageString = ("Image\(i)")
            guard let image = UIImage(named: imageString) else { return }
            let painting = Painting(image: image)
            paintings.append(painting)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PaintingTableViewCell.reuseIdentifier) as? PaintingTableViewCell else {
            fatalError("Could not instantiate guaranteed cell type.")
        }
        
        cell.delegate = self
        
        let image = paintings[indexPath.row].image
        cell.paintingImageView.image = image
        
        let title = "Like"
        
        cell.buttonOutlet?.setTitle(title, for: .normal)
        cell.buttonOutlet.alpha = paintings[indexPath.row].isLiked ? 1.0 : 0.33
        
        return cell
    }
    
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView?.indexPath(for: cell)
            else { fatalError("No cell.") }
        
        paintings[indexPath.row].isLiked.toggle()
        cell.buttonOutlet.alpha = paintings[indexPath.row].isLiked ? 1.0 : 0.33
    }
}
