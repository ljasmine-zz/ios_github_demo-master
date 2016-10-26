//
//  RepoCell.swift
//  GithubDemo
//
//  Created by jasmine_lee on 10/26/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class RepoCell: UITableViewCell {

    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var byLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var forkImageView: UIImageView!
    @IBOutlet weak var ownerImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!

    var repo : GithubRepo! {
        didSet {
            repoNameLabel.text = repo.name
            ownerLabel.text = repo.ownerHandle
            starLabel.text = "\(repo.stars!)"
            forkLabel.text = "\(repo.forks!)"
            let avatarURL = URL(string: repo.ownerAvatarURL!)
            ownerImageView.setImageWith(avatarURL!)
            descriptionLabel.text = repo.repoDescription
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
