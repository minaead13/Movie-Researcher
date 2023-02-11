//
//  HomeTableViewCell.swift
//  Movie Searcher
//
//  Created by Mina on 03/02/2023.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var movieYearLabel: UILabel!
    @IBOutlet var moviePosterLabel: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    static let identifier = "HomeTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "HomeTableViewCell", bundle: nil)
    }
    
    func configure(with model: Movie){
        self.movieTitleLabel.text = model.Title
        self.movieYearLabel.text = model.Year
        let url = model.Poster
        if let data = try? Data(contentsOf: URL(string: url)!) {
            self.moviePosterLabel.image = UIImage(data: data)
        }
        
    }
    
}
