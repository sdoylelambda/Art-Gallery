import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "cell"
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var paintingImageView: UIImageView!
    @IBOutlet weak var buttonOutlet: UIButton!

    @IBAction func buttonAction(_ sender: Any) {
        delegate?.tappedLikeButton(on: self)
    }
}

